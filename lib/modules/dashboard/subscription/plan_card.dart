import 'package:alert_hub/core/utils/extensions.dart';
import 'package:alert_hub/core/utils/spacing.dart';
import 'package:alert_hub/modules/dashboard/data/model/package_subscription_result.dart';
import 'package:alert_hub/modules/dashboard/subscription/feature_row.dart'
    show FeatureRow;
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PlanCard extends StatelessWidget {
  final PackageSubscriptionResult plan;
  final ColorScheme scheme;
  const PlanCard({super.key, required this.plan, required this.scheme});

  @override
  Widget build(BuildContext context) {
    final isPopular = plan.isActive == true;
    return Container(
      decoration: BoxDecoration(
        color: isPopular
            ? scheme.primaryContainer.withValues(alpha: 0.15)
            : Colors.white.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isPopular
              ? scheme.onPrimaryContainer.withValues(alpha: 0.35)
              : Colors.white.withValues(alpha: 0.08),
          width: isPopular ? 1.2 : 0.8,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  plan.packageName ?? '',
                  style: context.textStyle.labelMedium?.copyWith(
                    color: context.colorScheme.onPrimaryContainer,
                    fontWeight: FontWeight.w600,
                  ),
                  textScaler: const TextScaler.linear(0.9),
                ),
                const Spacer(),
                if (isPopular)
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: scheme.onPrimaryContainer.withValues(alpha: 0.15),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: scheme.onPrimaryContainer.withValues(alpha: 0.3),
                        width: 0.8,
                      ),
                    ),
                    child: Text(
                      "Active",
                      style: context.textStyle.labelSmall?.copyWith(
                        color: context.colorScheme.onPrimaryContainer,
                        fontWeight: FontWeight.w600,
                      ),
                      textScaler: const TextScaler.linear(0.9),
                    ),
                  ),
              ],
            ),
            Spacing.h8,
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '₹${plan.packageRate?.toStringAsFixed(0) ?? '0'}',
                  style: context.textStyle.headlineSmall?.copyWith(
                    color: context.colorScheme.onPrimaryContainer,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.5,
                  ),
                  textScaler: const TextScaler.linear(0.9),
                ),
                Text(
                  '/${plan.duration ?? 30} days',
                  style: context.textStyle.labelMedium?.copyWith(
                    color: context.colorScheme.onPrimaryContainer.withValues(alpha: 0.4),
                  ),
                  textScaler: const TextScaler.linear(0.9),
                ),
              ],
            ),
            Spacing.h12,
            Divider(
              color: context.colorScheme.onPrimaryContainer.withValues(alpha: 0.06),
              thickness: 0.8,
            ),
            Spacing.h12,
            FeatureRow(
              icon: Icons.message_outlined,
              text: 'Daily Send: ${plan.dailySendLimit ?? 0}',
            ),
            Spacing.h8,
            FeatureRow(
              icon: Icons.person_outline_rounded,
              text: 'Numbers: ${plan.allowedNumberLimit ?? 0}',
            ),
            Spacing.h8,
            FeatureRow(
              icon: Icons.group_outlined,
              text: 'Team Members: ${plan.allowedTeamMember ?? 0}',
            ),
            Spacing.h16,
            SizedBox(
              width: double.infinity,
              child: GestureDetector(
                onTap: () => Get.snackbar(
                  plan.packageName ?? '',
                  "Upgrade coming soon",
                  snackPosition: SnackPosition.BOTTOM,
                  backgroundColor: Colors.white.withValues(alpha: 0.1),
                  colorText: Colors.white,
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                    color: isPopular
                        ? scheme.onPrimaryContainer
                        : Colors.white.withValues(alpha: 0.08),
                    borderRadius: BorderRadius.circular(10),
                    border: isPopular
                        ? null
                        : Border.all(
                            color: Colors.white.withValues(alpha: 0.15),
                            width: 0.8,
                          ),
                  ),
                  child: Center(
                    child: Text(
                      "Buy Package",
                      style: context.textStyle.titleMedium?.copyWith(
                        color: isPopular
                            ? scheme.primary
                            : scheme.onPrimaryContainer.withValues(alpha: 0.7),
                        fontWeight: FontWeight.w600,
                      ),
                      textScaler: const TextScaler.linear(0.9),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


