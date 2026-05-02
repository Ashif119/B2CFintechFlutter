import 'package:alert_hub/core/utils/extensions.dart';
import 'package:alert_hub/core/utils/spacing.dart';
import 'package:alert_hub/modules/dashboard/home/home.dart';
import 'package:alert_hub/modules/dashboard/inbox/inbox_screen.dart';
import 'package:alert_hub/modules/dashboard/setting/setting_screen.dart';
import 'package:alert_hub/modules/dashboard/subscription/subscription_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bottom_nav_controller.dart';

class MainShell extends StatelessWidget {
  const MainShell({super.key});

  @override
  Widget build(BuildContext context) {
    final navController = Get.put(BottomNavController());
    final scheme = context.colorScheme;

    final screens = [
      const DashboardScreen(),
      const SubscriptionScreen(),
      const InboxScreen(),
      const SettingsScreen(),
    ];

    return Obx(() {
      final index = navController.currentIndex.value;
      return Scaffold(
        backgroundColor: scheme.primary,
        body: IndexedStack(index: index, children: screens),
        bottomNavigationBar: BottomNavBar(
          currentIndex: index,
          onTap: navController.changePage,
          scheme: scheme,
        ),
      );
    });
  }
}

// ── Bottom Navigation Bar ─────────────────────────────────────────────────

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;
  final ColorScheme scheme;

  const BottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
    required this.scheme,
  });

  @override
  Widget build(BuildContext context) {
    final items = [
      NavBarItem(
        label: 'Home',
        outlinedIcon: Icons.home_outlined,
        filledIcon: Icons.home_rounded,
      ),
      NavBarItem(
        label: 'Subscriptions',
        outlinedIcon: Icons.card_membership_outlined,
        filledIcon: Icons.card_membership_rounded,
      ),
      NavBarItem(
        label: 'Inbox',
        outlinedIcon: Icons.inbox_outlined,
        filledIcon: Icons.inbox_rounded,
      ),
      NavBarItem(
        label: 'Settings',
        outlinedIcon: Icons.settings_outlined,
        filledIcon: Icons.settings_rounded,
      ),
    ];

    return Container(
      decoration: BoxDecoration(
        color: scheme.primary,
        border: Border(
          top: BorderSide(
            color: Colors.white.withValues(alpha: 0.08),
            width: 0.8,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(items.length, (index) {
            final item = items[index];
            final isActive = currentIndex == index;
            return Expanded(
              child: NavBarItemWidget(
                item: item,
                isActive: isActive,
                scheme: scheme,
                onTap: () => onTap(index),
              ),
            );
          }),
        ),
      ),
    );
  }
}

class NavBarItem {
  final String label;
  final IconData outlinedIcon;
  final IconData filledIcon;

  const NavBarItem({
    required this.label,
    required this.outlinedIcon,
    required this.filledIcon,
  });
}

class NavBarItemWidget extends StatelessWidget {
  final NavBarItem item;
  final bool isActive;
  final ColorScheme scheme;
  final VoidCallback onTap;

  const NavBarItemWidget({
    super.key,
    required this.item,
    required this.isActive,
    required this.scheme,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    final textScaler = MediaQuery.textScalerOf(
      context,
    ).clamp(maxScaleFactor: 1.2);

    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: isActive
              ? scheme.primaryContainer.withValues(alpha: 0.18)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(14),
          border: isActive
              ? Border.all(
                  color: scheme.onPrimaryContainer.withValues(alpha: 0.2),
                  width: 0.8,
                )
              : null,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              isActive ? item.filledIcon : item.outlinedIcon,
              color: isActive
                  ? scheme.onPrimaryContainer
                  : Colors.white.withValues(alpha: 0.4),
              size: 22,
            ),
            Spacing.h4,
            Text(
              item.label,
              textScaler: textScaler,
              style: context.textStyle.labelSmall?.copyWith(
                fontWeight: isActive ? FontWeight.w600 : FontWeight.w400,
                letterSpacing: 0.1,
                color: isActive
                    ? context.colorScheme.onPrimaryContainer
                    : context.colorScheme.onPrimaryContainer.withValues(
                        alpha: 0.4,
                      ),
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
