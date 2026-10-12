import 'package:flutter/material.dart';
import '../presentation/pages/launcher.dart';
import '../../auth/presentation/pages/login_page.dart';
import '../../main/presentation/pages/main_page.dart';
import '../../profile/presentation/pages/profile_page.dart';
import '../../search/presentation/pages/search_page.dart';

import 'package:auto_route/auto_route.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material(); //.cupertino, .adaptive ..etc

  @override
  List<AutoRoute> get routes => [
    // AutoRoute(page: TempRoute.page),
    // AutoRoute(
    //   initial: true,
    //   page: OnboardingRoute.page,
    // ),

    /// Root
    AutoRoute(
      page: LauncherRoute.page,
      initial: true,
      children: [
        // AutoRoute(page: TempRoute.page),
      ],
    ),

    // AutoRoute(page: AdminAccompanimentStatusesRoute.page),

    ///
    /// <--`Auth`-->
    ///
    // AutoRoute(page: LoginRoute.page),
    // // AutoRoute(page: PasswordRecoveryRoute.page),
    // AutoRoute(page: EnterSmsCodeRoute.page),
    // AutoRoute(page: RegisterRoute.page),
    // AutoRoute(page: NewPasswordRoute.page),

    ///
    /// <--`Main`-->
    ///
    // AutoRoute(page: MainRoute.page),
    // AutoRoute(page: CarAssessmentRoute.page),

    // AutoRoute(page: SelectionRoute.page),

    // ///
    // /// <--`Application`-->
    // ///
    // AutoRoute(page: ApplicationDetailRoute.page),

    ///
    /// <--`Profile`-->
    ///
    // AutoRoute(page: ProfileRoute.page),
  ];
}

@RoutePage(name: 'BaseMainTab')
class BaseMainPage extends AutoRouter {
  const BaseMainPage({super.key});
}

@RoutePage(name: 'BaseAutoTab')
class BaseAutoPage extends AutoRouter {
  const BaseAutoPage({super.key});
}

@RoutePage(name: 'BaseApplicationTab')
class BaseApplicationPage extends AutoRouter {
  const BaseApplicationPage({super.key});
}

@RoutePage(name: 'BaseProfileTab')
class BaseProfilePage extends AutoRouter {
  const BaseProfilePage({super.key});
}
