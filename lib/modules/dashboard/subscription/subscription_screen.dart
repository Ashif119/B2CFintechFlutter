import 'package:alert_hub/core/theme/theme_colors.dart';
import 'package:alert_hub/core/utils/extensions.dart';
import 'package:alert_hub/core/utils/spacing.dart';
import 'package:alert_hub/core/widgets/custom_app_bar.dart';
import 'package:alert_hub/core/widgets/glass_icon_box.dart';
import 'package:alert_hub/modules/dashboard/dashboard_controller.dart';
import 'package:alert_hub/modules/dashboard/subscription/plan_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubscriptionScreen extends GetView<DashboardController> {
  const SubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return Scaffold(
      backgroundColor: scheme.primary,
      appBar: CustomAppBar(
        middle: Text(
          "Subscription",
          style: context.textStyle.titleLarge?.copyWith(
            color: context.colorScheme.onPrimaryContainer,
            fontWeight: FontWeight.w600,
            letterSpacing: -0.3,
          ),
          textScaler: const TextScaler.linear(0.9),
        ),
        autoImplyLeading: false,
        showActions: true,
        trailing: Row(
          children: [
            GlassIconBox(
              width: 50,
              height: 38,
              child: Icon(
                Icons.history_rounded,
                color: Colors.white.withValues(alpha: 0.8),
                size: 20,
              ),
            ),
            Spacing.w8,
          ],
        ),
      ),
      body: Obx(() {
        final plans = controller.subscriptionPlan;
        return Column(
          children: [
            Spacing.h12,
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Before Purchase of any package you have to integrate API,No refund will process any case.If you have any active package and you will purchase any other package all remaining limit and validity will be flush out and new package will be applicable from today.",
                style: context.textStyle.labelMedium?.copyWith(
                  color: ThemeColors.colorRed,
                ),
              ),
            ),
            Spacing.h12,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GlassIconBox(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        color: scheme.onPrimaryContainer.withValues(
                          alpha: 0.15,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        Icons.bolt_rounded,
                        color: scheme.onPrimaryContainer,
                        size: 22,
                      ),
                    ),
                    const SizedBox(width: 14),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Current Plan: Starter",
                            style: context.textStyle.titleMedium?.copyWith(
                              color: context.colorScheme.onPrimaryContainer,
                              fontWeight: FontWeight.w600,
                            ),
                            textScaler: const TextScaler.linear(0.9),
                          ),
                          const SizedBox(height: 3),
                          Text(
                            "Expires: 11 Apr 2026",
                            style: context.textStyle.labelMedium?.copyWith(
                              color: context.colorScheme.onPrimaryContainer
                                  .withValues(alpha: 0.45),
                            ),
                            textScaler: const TextScaler.linear(0.9),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.greenAccent.withValues(alpha: 0.12),
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Colors.greenAccent.withValues(alpha: 0.3),
                          width: 0.8,
                        ),
                      ),
                      child: Text(
                        "Active",
                        style: context.textStyle.labelMedium?.copyWith(
                          color: context.colorScheme.onPrimaryContainer,
                          fontWeight: FontWeight.w600,
                        ),
                        textScaler: const TextScaler.linear(0.9),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Spacing.h12,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Choose a Plan",
                  style: context.textStyle.labelMedium?.copyWith(
                    color: context.colorScheme.onPrimaryContainer.withValues(
                      alpha: 0.9,
                    ),
                    fontWeight: FontWeight.w600,
                  ),
                  textScaler: const TextScaler.linear(0.9),
                ),
              ),
            ),
            Spacing.h12,
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 24),
                itemCount: plans.length,
                separatorBuilder: (_, _) => Spacing.h12,
                itemBuilder: (context, index) =>
                    PlanCard(plan: plans[index], scheme: scheme),
              ),
            ),
          ],
        );
      }),
    );
  }
}
