import 'package:auto_route/auto_route.dart';
import 'package:breeze_app/src/core/presentation/widgets/other/custom_loading_widget.dart';
import 'package:breeze_app/src/core/utils/extensions/context_extension.dart';
import 'package:breeze_app/src/feature/app/bloc/app_bloc.dart';
import 'package:breeze_app/src/feature/app/presentation/pages/base.dart';
import 'package:breeze_app/src/feature/app/presentation/pages/force_update_page.dart';
import 'package:breeze_app/src/feature/auth/bloc/login_cubit.dart';
import 'package:breeze_app/src/feature/auth/presentation/pages/login_page.dart';
import 'package:breeze_app/src/feature/settings/bloc/app_settings_bloc.dart';
import 'package:breeze_app/src/feature/settings/widget/settings_scope.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';

@RoutePage(name: 'LauncherRoute')
class Launcher extends StatefulWidget {
  const Launcher({super.key, this.initialTabIndex});
  final int? initialTabIndex;

  @override
  State<Launcher> createState() => _LauncherState();
}

class _LauncherState extends State<Launcher> {
  bool _initialAuthHandled = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_initialAuthHandled) return;
    _initialAuthHandled = true;
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      if (!mounted) return;
      if (context.read<AppBloc>().state == const AppState.loading()) {
        await _retryAuth();
        return;
      }
      context.read<AppBloc>().state.whenOrNull(inApp: _syncUserLocale);
    });
  }

  void _syncUserLocale() {
    final languageId = context.repository.authRepository.user?.language?.id;
    final locale = switch (languageId) {
      1 => const Locale('ru'),
      2 => const Locale('kk'),
      _ => null,
    };
    if (locale == null) return;

    final settingsBloc = SettingsScope.of(context, listen: false);
    final settings = settingsBloc.state.appSettings;
    if (settings?.locale == locale) return;
    settingsBloc.add(
      AppSettingsEvent.updateAppSettings(
        appSettings: SettingsScope.settingsOf(
          context,
          listen: false,
        ).copyWith(locale: locale),
      ),
    );
  }

  Future<void> _retryAuth() async {
    final packageInfo = await PackageInfo.fromPlatform();
    if (!mounted) return;
    context.read<AppBloc>().add(
      AppEvent.checkAuth(version: packageInfo.version),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppBloc, AppState>(
      listenWhen: (previous, current) =>
          current.maybeWhen(inApp: () => true, orElse: () => false) &&
          !previous.maybeWhen(inApp: () => true, orElse: () => false),
      listener: (context, state) => _syncUserLocale(),
      builder: (context, state) => state.when(
        notAvailableVersion: () =>
            ForceUpdatePage.forceUpdate(onTap: _retryAuth),
        error: (message) =>
            ForceUpdatePage.noAvailable(onTap: _retryAuth, error: message),
        inApp: () => BasePageStart(initialTabIndex: widget.initialTabIndex),
        notAuthorized: () => BlocProvider(
          create: (context) =>
              LoginCubit(repository: context.repository.authRepository),
          child: BlocListener<LoginCubit, LoginState>(
            listener: (context, state) => state.whenOrNull(
              loaded: (user) =>
                  context.read<AppBloc>().add(AppEvent.logining(user: user)),
            ),
            child: const LoginPage(),
          ),
        ),
        loading: () => const _Scaffold(child: CustomLoadingWidget()),
      ),
    );
  }
}

class _Scaffold extends StatelessWidget {
  const _Scaffold({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) => Scaffold(body: SafeArea(child: child));
}
