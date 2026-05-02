import 'package:alert_hub/core/utils/extensions.dart';
import 'package:alert_hub/core/utils/spacing.dart';
import 'package:alert_hub/core/widgets/glass_icon_box.dart';
import 'package:alert_hub/modules/dashboard/dashboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ── Empty State ────────────────────────────────────────────────────────────

class EmptyState extends GetView<DashboardController> {
  const EmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: .min,
        children: [
          GlassIconBox(
            width: 72,
            height: 72,
            child: Icon(
              Icons.inbox_outlined,
              color: Colors.white.withValues(alpha: 0.3),
              size: 32,
            ),
          ),
          Spacing.h16,
          Text(
            "No senders added yet",
            style: context.textStyle.titleMedium?.copyWith(
              color: context.colorScheme.onPrimaryContainer.withValues(
                alpha: 0.5,
              ),
              fontWeight: FontWeight.w500,
            ),
            textScaler: const TextScaler.linear(0.9),
          ),
          Spacing.h4,
          Text(
            "Tap + Add to get started",
            style: context.textStyle.labelMedium?.copyWith(
              color: context.colorScheme.onPrimaryContainer.withValues(
                alpha: 0.5,
              ),
              fontWeight: FontWeight.w500,
            ),
            textScaler: const TextScaler.linear(0.9),
          ),
        ],
      ),
    );
  }
}
