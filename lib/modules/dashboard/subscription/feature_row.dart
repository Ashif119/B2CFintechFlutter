import 'package:alert_hub/core/utils/extensions.dart';
import 'package:alert_hub/core/utils/spacing.dart';
import 'package:flutter/material.dart';

class FeatureRow extends StatelessWidget {
  final IconData icon;
  final String text;
  const FeatureRow({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 15,
          color: context.colorScheme.onPrimaryContainer.withValues(alpha: 0.45),
        ),
        Spacing.w8,
        Text(
          text,
          style: context.textStyle.labelMedium?.copyWith(
            color: context.colorScheme.onPrimaryContainer.withValues(alpha: 0.65),
          ),
          textScaler: const TextScaler.linear(0.9),
        ),
      ],
    );
  }
}
