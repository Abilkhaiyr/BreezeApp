import 'package:auto_route/auto_route.dart';
import 'package:breeze_app/src/core/theme/recources.dart';
import 'package:breeze_app/src/core/utils/extensions/context_extension.dart';
import 'package:breeze_app/src/feature/app/presentation/widgets/custom_tab_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BaseBottomNavbar extends StatefulWidget {
  final TabsRouter tabsRouter;
  final TabController tabController;
  final int chatBadgeCount;

  const BaseBottomNavbar({
    super.key,
    required this.tabsRouter,
    required this.tabController,
    this.chatBadgeCount = 0,
  });

  @override
  State<BaseBottomNavbar> createState() => _BaseBottomNavbarState();
}

class _BaseBottomNavbarState extends State<BaseBottomNavbar> {
  @override
  void initState() {
    super.initState();

    widget.tabsRouter.addListener(_onTabChanged);
  }

  void _onTabChanged() {
    widget.tabController.animateTo(widget.tabsRouter.activeIndex);
  }

  @override
  void dispose() {
    widget.tabsRouter.removeListener(_onTabChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tabs = <String>[
      // Assets.icons.tabHome.path,
      // Assets.icons.tabHeart.path,
      // Assets.icons.tabAdd.path,
      // Assets.icons.tabChat.path,
      // Assets.icons.tabProfile.path,
    ];
    final labels = <String>[
      context.localized.bottomNavHome,
      context.localized.bottomNavFavorites,
      context.localized.bottomNavPost,
      context.localized.bottomNavMessages,
      context.localized.bottomNavCabinet,
    ];

    return SafeArea(
      bottom: true,
      minimum: const EdgeInsets.fromLTRB(10, 0, 10, 16),
      child: Container(
        width: double.maxFinite,
        height: 65,
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: AppColors.mainColor,
          borderRadius: BorderRadius.circular(85),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(17, 24, 39, 0.14),
              blurRadius: 32,
              spreadRadius: 0,
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: Row(
          children: List.generate(
            tabs.length,
            (index) => CustomTabWidget(
              icon: tabs[index],
              label: labels[index],
              isActive: widget.tabsRouter.activeIndex == index,
              badgeCount: index == 3 ? widget.chatBadgeCount : 0,
              onTap: () {
                HapticFeedback.lightImpact();

                if (widget.tabsRouter.activeIndex == index) {
                  widget.tabsRouter.maybePopTop();
                  return;
                }

                widget.tabsRouter.setActiveIndex(index);
                widget.tabController.animateTo(index);
              },
            ),
          ),
        ),
      ),
    );
  }
}
