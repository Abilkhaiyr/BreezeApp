// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [BaseApplicationPage]
class BaseApplicationTab extends PageRouteInfo<void> {
  const BaseApplicationTab({List<PageRouteInfo>? children})
    : super(BaseApplicationTab.name, initialChildren: children);

  static const String name = 'BaseApplicationTab';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const BaseApplicationPage();
    },
  );
}

/// generated route for
/// [BaseAutoPage]
class BaseAutoTab extends PageRouteInfo<void> {
  const BaseAutoTab({List<PageRouteInfo>? children})
    : super(BaseAutoTab.name, initialChildren: children);

  static const String name = 'BaseAutoTab';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const BaseAutoPage();
    },
  );
}

/// generated route for
/// [BaseMainPage]
class BaseMainTab extends PageRouteInfo<void> {
  const BaseMainTab({List<PageRouteInfo>? children})
    : super(BaseMainTab.name, initialChildren: children);

  static const String name = 'BaseMainTab';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const BaseMainPage();
    },
  );
}

/// generated route for
/// [BaseProfilePage]
class BaseProfileTab extends PageRouteInfo<void> {
  const BaseProfileTab({List<PageRouteInfo>? children})
    : super(BaseProfileTab.name, initialChildren: children);

  static const String name = 'BaseProfileTab';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const BaseProfilePage();
    },
  );
}

/// generated route for
/// [Launcher]
class LauncherRoute extends PageRouteInfo<LauncherRouteArgs> {
  LauncherRoute({Key? key, int? initialTabIndex, List<PageRouteInfo>? children})
    : super(
        LauncherRoute.name,
        args: LauncherRouteArgs(key: key, initialTabIndex: initialTabIndex),
        initialChildren: children,
      );

  static const String name = 'LauncherRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LauncherRouteArgs>(
        orElse: () => const LauncherRouteArgs(),
      );
      return Launcher(key: args.key, initialTabIndex: args.initialTabIndex);
    },
  );
}

class LauncherRouteArgs {
  const LauncherRouteArgs({this.key, this.initialTabIndex});

  final Key? key;

  final int? initialTabIndex;

  @override
  String toString() {
    return 'LauncherRouteArgs{key: $key, initialTabIndex: $initialTabIndex}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! LauncherRouteArgs) return false;
    return key == other.key && initialTabIndex == other.initialTabIndex;
  }

  @override
  int get hashCode => key.hashCode ^ initialTabIndex.hashCode;
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LoginPage();
    },
  );
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
    : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MainPage();
    },
  );
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProfilePage();
    },
  );
}

/// generated route for
/// [SearchPage]
class SearchRoute extends PageRouteInfo<void> {
  const SearchRoute({List<PageRouteInfo>? children})
    : super(SearchRoute.name, initialChildren: children);

  static const String name = 'SearchRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SearchPage();
    },
  );
}
