pluginManagement {
    val flutterSdkPath =
        run {
            val properties = java.util.Properties()
            file("local.properties").inputStream().use { properties.load(it) }
            val flutterSdkPath = properties.getProperty("flutter.sdk")
            require(flutterSdkPath != null) { "flutter.sdk not set in local.properties" }
            flutterSdkPath
        }

    includeBuild("$flutterSdkPath/packages/flutter_tools/gradle")

    repositories {
        google()
        mavenCentral()
        gradlePluginPortal()
    }
}

plugins {
    id("dev.flutter.flutter-plugin-loader") version "1.0.0"
    id("com.android.application") version "8.11.1" apply false
    id("org.jetbrains.kotlin.android") version "2.2.20" apply false
}

include(":app")

// Both hosts serve Maven Central. Use repo1 because the local network's
// certificate gateway prevents Java from validating repo.maven.apache.org.
gradle.beforeProject {
    repositories.maven {
        name = "LocalFlutterEngine"
        url = uri("${rootDir}/../.dart_tool/flutter-maven")
        content { includeGroup("io.flutter") }
    }
    buildscript.repositories.withType<org.gradle.api.artifacts.repositories.MavenArtifactRepository>().configureEach {
        if (url.host == "repo.maven.apache.org") {
            url = uri("https://repo1.maven.org/maven2")
        }
    }
    repositories.withType<org.gradle.api.artifacts.repositories.MavenArtifactRepository>().configureEach {
        if (url.host == "repo.maven.apache.org") {
            url = uri("https://repo1.maven.org/maven2")
        }
    }
}
