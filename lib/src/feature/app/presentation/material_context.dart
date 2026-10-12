import 'package:breeze_app/src/core/constant/localization/localization.dart';
import 'package:breeze_app/src/core/presentation/widgets/other/custom_loading_overlay_widget.dart';
import 'package:breeze_app/src/core/theme/recources.dart';
import 'package:breeze_app/src/feature/app/presentation/widgets/app_router_builder.dart';
import 'package:breeze_app/src/feature/settings/widget/settings_scope.dart';
import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';
import '../router/app_router.dart';

// class MaterialContext extends StatelessWidget {
//   const MaterialContext({super.key});
//   @override
//   Widget build(BuildContext context) =>
//       BlocBuilder<AppSettingsBloc, AppSettings>(
//         builder: (context, settings) => MaterialApp(
//           title: context.dependencies.config.appName,
//           debugShowCheckedModeBanner: false,
//           theme: AppTheme.light,
//           darkTheme: AppTheme.dark,
//           themeMode: settings.themeMode,
//           initialRoute: AppRouter.launcher,
//           onGenerateRoute: context.dependencies.appRouter.onGenerateRoute,
//         ),
//       );
// }

/// {@template material_context}
/// [MaterialContext] is an entry point to the material context.
///
/// This widget sets locales, themes and routing.
/// {@endtemplate}
class MaterialContext extends StatelessWidget {
  /// {@macro material_context}
  const MaterialContext({super.key});

  // This global key is needed for [MaterialApp]
  // to work properly when Widgets Inspector is enabled.
  // static final _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final settings = SettingsScope.settingsOf(context);
    final mediaQueryData = MediaQuery.of(context);

    return AppRouterBuilder(
      createRouter: (context) => AppRouter(),
      builder: (context, informationParser, routerDelegate, router) =>
          MaterialApp.router(
            title: 'autohelp',
            onGenerateTitle: (context) => 'autohelp',
            routerDelegate: routerDelegate,
            routeInformationParser: informationParser,
            theme: AppThemes.light,
            darkTheme: AppThemes.light,
            // theme: theme.lightTheme,
            // darkTheme: theme.darkTheme,
            // themeMode: ThemeMode.light, // theme.mode,
            localizationsDelegates: Localization.localizationDelegates,
            supportedLocales: Localization.supportedLocales,
            locale: settings.locale,
            // home: const HomeScreen()
            builder: (context, child) => MediaQuery(
              // key: _globalKey,
              data: mediaQueryData.copyWith(
                textScaler: const TextScaler.linear(0.98),
              ),
              child: LoaderOverlay(
                overlayColor: AppColors.mainColor,
                overlayWidgetBuilder: (_) => const CustomLoadingOverlayWidget(),
                child: child!,
              ),
            ),
          ),
    );
  }
}
