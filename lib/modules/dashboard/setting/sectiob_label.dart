import 'package:alert_hub/core/utils/extensions.dart';
import 'package:flutter/material.dart';

class SectionLabel extends StatelessWidget {
  final String label;
  const SectionLabel({required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4),
      child: Text(
        label.toUpperCase(),
        style: context.textStyle.labelSmall?.copyWith(
          color: context.colorScheme.onPrimaryContainer.withValues(alpha: 0.5),
          fontWeight: FontWeight.w600,
          letterSpacing: 1.5,
        ),
        textScaler: const TextScaler.linear(0.9),
      ),
    );
  }
}
