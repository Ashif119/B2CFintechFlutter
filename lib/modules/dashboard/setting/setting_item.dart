import 'package:alert_hub/core/utils/extensions.dart';
import 'package:alert_hub/core/utils/spacing.dart';
import 'package:flutter/material.dart';


class SettingItem extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String label;
  final String? trailing;
  final VoidCallback onTap;
  final bool showDivider;

  const SettingItem({super.key,
    required this.icon,
    required this.iconColor,
    required this.label,
    required this.onTap,
    this.trailing,
    this.showDivider = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          behavior: HitTestBehavior.opaque,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
            child: Row(
              children: [
                Container(
                  width: 34,
                  height: 34,
                  decoration: BoxDecoration(
                    color: iconColor.withValues(alpha: 0.12),
                    borderRadius: BorderRadius.circular(9),
                  ),
                  child: Icon(icon, color: iconColor, size: 17),
                ),
                Spacing.w12,
                Expanded(
                  child: Text(
                    label,
                    style: context.textStyle.labelLarge?.copyWith(
                      color: context.colorScheme.onPrimaryContainer.withValues(
                        alpha: 0.8,
                      ),
                    ),
                    textScaler: const TextScaler.linear(1.0),
                  ),
                ),
                if (trailing != null)
                  Text(
                    trailing!,
                    style: context.textStyle.labelSmall?.copyWith(
                      color: context.colorScheme.onPrimaryContainer.withValues(
                        alpha: 0.3,
                      ),
                    ),
                    textScaler: const TextScaler.linear(0.9),
                  ),
                Spacing.w4,
                Icon(
                  Icons.chevron_right_rounded,
                  color: Colors.white.withValues(alpha: 0.2),
                  size: 18,
                ),
              ],
            ),
          ),
        ),
        if (showDivider)
          Divider(
            indent: 60,
            endIndent: 0,
            color: Colors.white.withValues(alpha: 0.05),
            thickness: 0.8,
            height: 0,
          ),
      ],
    );
  }
}
