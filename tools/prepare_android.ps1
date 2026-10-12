$ErrorActionPreference = 'Stop'
$ProgressPreference = 'SilentlyContinue'
$taskRoot = Split-Path -Parent $PSScriptRoot
$taskProperties = Get-Content (Join-Path $taskRoot 'android/local.properties')
$taskSdkLine = $taskProperties | Where-Object { $_ -match '^flutter\.sdk=' } | Select-Object -First 1
if (!$taskSdkLine) { throw 'flutter.sdk is missing from android/local.properties. Run flutter pub get first.' }
$taskSdk = ($taskSdkLine -replace '^flutter\.sdk=', '').Replace('\\', '\').Replace('\:', ':')
$taskEngine = (Get-Content (Join-Path $taskSdk 'bin/cache/engine.stamp')).Trim()
if ($taskEngine -notmatch '^[a-f0-9]{40}$') { throw 'Invalid Flutter engine revision.' }
$taskVersion = "1.0.0-$taskEngine"
$taskCache = Join-Path $taskRoot '.dart_tool/flutter-maven/io/flutter'
$taskGradleHome = if ($env:GRADLE_USER_HOME) { $env:GRADLE_USER_HOME } else { Join-Path $env:USERPROFILE '.gradle' }

# Uses normal Windows HTTPS certificate validation. No trust settings are changed.
# CFUG is listed in https://docs.flutter.dev/community/china.
foreach ($taskArtifact in @('flutter_embedding_debug', 'x86_64_debug', 'armeabi_v7a_debug', 'arm64_v8a_debug')) {
    $taskDestination = Join-Path $taskCache "$taskArtifact/$taskVersion"
    New-Item -ItemType Directory -Path $taskDestination -Force | Out-Null
    foreach ($taskExtension in @('pom', 'jar')) {
        $taskName = "$taskArtifact-$taskVersion.$taskExtension"
        $taskFile = Join-Path $taskDestination $taskName
        if (Test-Path -LiteralPath $taskFile) { continue }
        $taskExistingDirectory = Join-Path $taskGradleHome "caches/modules-2/files-2.1/io.flutter/$taskArtifact/$taskVersion"
        if (Test-Path -LiteralPath $taskExistingDirectory) {
            $taskExisting = Get-ChildItem -LiteralPath $taskExistingDirectory -Recurse -File -Filter $taskName | Select-Object -First 1
            if ($taskExisting -and
                (Get-FileHash -LiteralPath $taskExisting.FullName -Algorithm SHA1).Hash -eq $taskExisting.Directory.Name) {
                Copy-Item -LiteralPath $taskExisting.FullName -Destination $taskFile
                Write-Host "Reused verified Gradle cache: $taskName"
                continue
            }
        }
        $taskUrl = "https://storage.flutter-io.cn/download.flutter.io/io/flutter/$taskArtifact/$taskVersion/$taskName"
        Write-Host "Downloading $taskName"
        $taskTemporary = "$taskFile.download"
        Invoke-WebRequest -Uri $taskUrl -OutFile $taskTemporary -UseBasicParsing -TimeoutSec 180
        if ($taskExtension -eq 'pom') {
            $taskXml = [xml](Get-Content -LiteralPath $taskTemporary -Raw)
            if ($taskXml.project.groupId -ne 'io.flutter' -or $taskXml.project.version -ne $taskVersion) {
                throw "Unexpected artifact metadata: $taskName"
            }
        } else {
            Add-Type -AssemblyName System.IO.Compression.FileSystem
            $taskArchive = [IO.Compression.ZipFile]::OpenRead($taskTemporary)
            try {
                if ($taskArchive.Entries.Count -eq 0) { throw "Empty artifact: $taskName" }
            } finally { $taskArchive.Dispose() }
        }
        Move-Item -LiteralPath $taskTemporary -Destination $taskFile -Force
    }
}
Write-Host 'Android debug engine artifacts are ready.'
