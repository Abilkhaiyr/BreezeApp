import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/constant/config.dart';
import '../../../../core/containers/repository_storage.dart';
import '../../../settings/bloc/app_settings_bloc.dart';
import '../../../settings/data/app_settings_datasource.dart';
import '../../../settings/data/app_settings_repository.dart';
import '../../router/app_router.dart';
import '../model/dependencies_container.dart';

final class CompositionRoot {
  const CompositionRoot(this.config);
  final Config config;
  Future<CompositionResult> compose() async {
    final stopwatch = Stopwatch()..start();
    final datasource = AppSettingsDatasourceImpl(
      sharedPreferences: SharedPreferencesAsync(),
    );
    final repository = AppSettingsRepositoryImpl(datasource: datasource);
    final sharedPreferences = await SharedPreferencesWithCache.create(
      cacheOptions: const SharedPreferencesWithCacheOptions(),
    );
    final packageInfo = await PackageInfo.fromPlatform();
    final settings = await repository.getAppSettings();
    final dependencies = DependenciesContainer(
      config: config,
      appRouter: AppRouter(),
      appSettingsBloc: AppSettingsBloc(
        appSettingsRepository: repository,
        initialState: AppSettingsState.idle(appSettings: settings),
      ),
    );
    stopwatch.stop();
    return CompositionResult(
      dependencies: dependencies,
      repository: RepositoryStorage(
        sharedPreferences: sharedPreferences,
        packageInfo: packageInfo,
        appSettingsDatasource: datasource,
      ),
      msSpent: stopwatch.elapsedMilliseconds,
    );
  }
}

final class CompositionResult {
  const CompositionResult({
    required this.dependencies,
    required this.repository,
    required this.msSpent,
  });
  final DependenciesContainer dependencies;
  final RepositoryStorage repository;
  final int msSpent;
}
