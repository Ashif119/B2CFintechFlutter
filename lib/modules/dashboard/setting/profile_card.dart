import 'package:alert_hub/core/common_controller.dart';
import 'package:alert_hub/core/network/ui_state.dart';
import 'package:alert_hub/modules/dashboard/data/model/profile_data.dart';
import 'package:alert_hub/core/utils/extensions.dart';
import 'package:alert_hub/core/utils/spacing.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileCard extends GetView<CommonController> {
  final ColorScheme scheme;
  const ProfileCard({super.key, required this.scheme});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final state = controller.profileData.value;
      final profile = state is Success<ProfileData> ? state.data : null;
      final name = profile?.name?.trim() ?? '';
      final email = profile?.email?.trim() ?? '';
      final initial = name.isNotEmpty ? name[0].toUpperCase() : '?';
      return Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: context.colorScheme.onPrimaryContainer.withValues(alpha: 0.05),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: context.colorScheme.onPrimaryContainer.withValues(
              alpha: 0.08,
            ),
            width: 0.8,
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                color: scheme.primaryContainer.withValues(alpha: 0.3),
                shape: BoxShape.circle,
                border: Border.all(
                  color: scheme.onPrimaryContainer.withValues(alpha: 0.4),
                  width: 0.8,
                ),
              ),
              child: Center(
                child: Text(
                  initial,
                  style: context.textStyle.titleLarge?.copyWith(
                    color: scheme.onPrimaryContainer,
                    fontWeight: FontWeight.w700,
                  ),
                  textScaler: const TextScaler.linear(1.4),
                ),
              ),
            ),
            Spacing.w12,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name.isNotEmpty ? name : 'Loading...',
                    style: context.textStyle.labelLarge?.copyWith(
                      color: scheme.onPrimaryContainer,
                      fontWeight: FontWeight.w600,
                    ),
                    textScaler: const TextScaler.linear(1.0),
                  ),
                  Spacing.h4,
                  Text(
                    email.isNotEmpty ? email : '',
                    style: context.textStyle.labelMedium?.copyWith(
                      color: scheme.onPrimaryContainer.withValues(alpha: 0.8),
                      fontWeight: FontWeight.w500,
                    ),
                    textScaler: const TextScaler.linear(0.9),
                  ),
                ],
              ),
            ),
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: context.colorScheme.onPrimary.withValues(alpha: 0.06),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: context.colorScheme.onPrimary.withValues(alpha: 0.12),
                ),
              ),
              child: Icon(
                Icons.edit_outlined,
                color: context.colorScheme.onPrimary.withValues(alpha: 0.6),
                size: 16,
              ),
            ),
          ],
        ),
      );
    });
  }
}
