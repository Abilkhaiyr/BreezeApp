import 'package:auto_route/auto_route.dart';
import 'package:breeze_app/src/feature/app/presentation/pages/base_bottom_nav_bar.dart';

import 'package:flutter/material.dart';

class BasePageStart extends StatelessWidget {
  final int? initialTabIndex;
  const BasePageStart({super.key, this.initialTabIndex});

  @override
  Widget build(BuildContext context) {
    return BasePage(initialTabIndex: initialTabIndex);
  }
}

class BasePage extends StatefulWidget {
  final int? initialTabIndex;

  const BasePage({super.key, this.initialTabIndex});

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> with TickerProviderStateMixin {
  late final TabController tabController;
  int? _pendingInitialTabIndex;

  @override
  void initState() {
    super.initState();
    _pendingInitialTabIndex = widget.initialTabIndex;
    tabController = TabController(
      initialIndex: widget.initialTabIndex ?? 0,
      length: 5,
      vsync: this,
    );
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: [
        // MainRoute(), SearchRoute(), ProfileRoute()
      ],
      transitionBuilder: (context, child, animation) {
        final tabsRouter = context.tabsRouter;

        if (_pendingInitialTabIndex != null) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (tabsRouter.activeIndex != _pendingInitialTabIndex) {
              tabsRouter.setActiveIndex(_pendingInitialTabIndex!);
              _pendingInitialTabIndex = null;
            }
          });
        }

        return Stack(
          children: [
            child,
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              // child: BlocBuilder<ChatUnreadCountCubit, ChatUnreadCountState>(
              //   buildWhen: (previous, current) =>
              //       previous.unreadCount != current.unreadCount,
              //   builder: (context, state) {
              //     return BaseBottomNavbar(
              //       tabsRouter: tabsRouter,
              //       tabController: tabController,
              //       chatBadgeCount: state.unreadCount,
              //     );
              //   },
              // ),
              child: BaseBottomNavbar(
                tabsRouter: tabsRouter,
                tabController: tabController,
                chatBadgeCount: 1,
              ),
            ),
          ],
        );
      },
    );
  }
}
