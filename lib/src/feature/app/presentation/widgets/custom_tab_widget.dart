import 'package:breeze_app/src/core/theme/recources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTabWidget extends StatelessWidget {
  final String icon;
  final String label;
  final bool isActive;
  final VoidCallback onTap;
  final int badgeCount;

  const CustomTabWidget({
    super.key,
    required this.icon,
    required this.label,
    required this.isActive,
    required this.onTap,
    this.badgeCount = 0,
  });

  @override
  Widget build(BuildContext context) {
    final showBadge = badgeCount > 0;
    final badgeText = badgeCount > 99 ? '99+' : '$badgeCount';
    final badgeBackgroundColor = isActive ? Colors.white : AppColors.mainColor;
    final badgeTextColor = isActive ? AppColors.mainColor : Colors.white;

    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        behavior: HitTestBehavior.opaque,
        child: Center(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 220),
            curve: Curves.easeOutCubic,
            height: 50,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
            decoration: BoxDecoration(
              color: isActive ? AppColors.mainColor : Colors.transparent,
              borderRadius: BorderRadius.circular(75),
            ),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      SvgPicture.asset(
                        icon,
                        width: 24,
                        height: 24,
                        colorFilter: ColorFilter.mode(
                          isActive ? Colors.white : AppColors.base500,
                          BlendMode.srcIn,
                        ),
                      ),
                      if (showBadge)
                        Positioned(
                          top: -9,
                          right: -12,
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 180),
                            curve: Curves.easeOutCubic,
                            constraints: const BoxConstraints(
                              minWidth: 18,
                              minHeight: 18,
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              color: badgeBackgroundColor,
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(
                                color: isActive
                                    ? AppColors.mainColor
                                    : AppColors.base200,
                                width: 1.5,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withValues(alpha: 0.10),
                                  blurRadius: 8,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              badgeText,
                              maxLines: 1,
                              textAlign: TextAlign.center,
                              style: AppTextStyles.fs11w400.copyWith(
                                height: 14 / 11,
                                color: badgeTextColor,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(height: 2),
                  Text(
                    label,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: AppTextStyles.fs12w500.copyWith(
                      fontSize: 8,
                      letterSpacing: 1.2,
                      color: isActive ? Colors.white : AppColors.base500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
