// import 'dart:async';
// import 'dart:developer';
// import 'dart:io';

// import 'package:auto_route/auto_route.dart';
// // import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/material.dart';

// const _tag = 'RouterObserver';

// class RouterObserver extends AutoRouterObserver {
//   static String? currentRouteName;
//   static String? currentTabRouteName;

//   static bool get isChatRouteActive =>
//       currentRouteName == 'ChatMessagesRoute' ||
//       currentRouteName == 'ChatListRoute' ||
//       (currentTabRouteName == 'ChatListRoute' &&
//           (currentRouteName == null || currentRouteName == 'LauncherRoute'));

//   static void _updateForegroundPresentation() {
//     final shouldShow = Platform.isIOS && !isChatRouteActive;
//     unawaited(
//       FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
//         alert: shouldShow,
//         // sound: shouldShow,
//       ),
//     );
//   }

//   @override
//   void didPush(Route route, Route? previousRoute) {
//     currentRouteName = route.settings.name;
//     _updateForegroundPresentation();
//     log('New route pushed: ${route.settings.name}', name: _tag);
//   }

//   // only override to observer tab routes
//   @override
//   void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
//     currentTabRouteName = route.name;
//     _updateForegroundPresentation();
//     log('Tab route visited: ${route.name}', name: _tag);
//   }

//   @override
//   void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
//     currentTabRouteName = route.name;
//     _updateForegroundPresentation();
//     log('Tab route re-visited: ${route.name}', name: _tag);
//   }

//   @override
//   void didPop(Route route, Route? previousRoute) {
//     currentRouteName = previousRoute?.settings.name ?? currentTabRouteName;
//     _updateForegroundPresentation();
//     log(
//       'New route after popped: ${route.settings.name}, ${previousRoute?.settings.name}',
//       name: _tag,
//     );
//   }

//   @override
//   void didRemove(Route route, Route? previousRoute) {
//     currentRouteName = previousRoute?.settings.name ?? currentTabRouteName;
//     _updateForegroundPresentation();
//     log('New route after removed: ${route.settings.name}', name: _tag);
//   }

//   @override
//   void didReplace({Route? newRoute, Route? oldRoute}) {
//     currentRouteName = newRoute?.settings.name ?? currentTabRouteName;
//     _updateForegroundPresentation();
//     log(
//       'Route replaced: ${oldRoute?.settings.name}, ${newRoute?.settings.name}',
//       name: _tag,
//     );
//   }
// }
