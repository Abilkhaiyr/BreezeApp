import '../../../../core/constant/config.dart';
import '../../router/app_router.dart';
import '../../../settings/bloc/app_settings_bloc.dart';

final class DependenciesContainer {
  const DependenciesContainer({
    required this.config,
    required this.appRouter,
    required this.appSettingsBloc,
  });
  final Config config;
  final AppRouter appRouter;
  final AppSettingsBloc appSettingsBloc;
  Future<void> close() => appSettingsBloc.close();
}
