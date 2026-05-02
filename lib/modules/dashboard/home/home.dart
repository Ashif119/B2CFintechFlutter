import 'package:alert_hub/core/utils/extensions.dart';
import 'package:alert_hub/core/utils/spacing.dart';
import 'package:alert_hub/core/widgets/custom_app_bar.dart';
import 'package:alert_hub/core/widgets/glass_icon_box.dart';
import 'package:alert_hub/modules/dashboard/dashboard_controller.dart';
import 'package:alert_hub/modules/dashboard/home/empty_state.dart';
import 'package:alert_hub/modules/dashboard/home/sender_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardScreen extends GetView<DashboardController> {
  const DashboardScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorScheme.primary,
      appBar: CustomAppBar(
        leading: Center(
          child: GlassIconBox(
            height: 38,
            width: 38,
            child: Icon(
              Icons.home,
              color: context.colorScheme.onPrimaryContainer.withValues(
                alpha: 0.8,
              ),
              size: 20,
            ),
          ),
        ),
        middle: Text(
          "Home",
          style: context.textStyle.titleLarge?.copyWith(
            color: context.colorScheme.onPrimaryContainer,
            fontWeight: FontWeight.w600,
            letterSpacing: -0.3,
          ),
          textScaler: const TextScaler.linear(1.2),
        ),
        showActions: true,
        trailing: Row(
          children: [
            GlassIconBox(
              borderRadius: 20,
              width: 50,
              height: 38,
              child: Row(
                mainAxisAlignment: .center,
                children: [
                  Text(
                    "₹",
                    style: context.textStyle.titleMedium?.copyWith(
                      color: context.colorScheme.onPrimaryContainer,
                      fontWeight: FontWeight.w600,
                    ),
                    textScaler: const TextScaler.linear(0.9),
                  ),
                  const SizedBox(width: 4),
                  Obx(
                    () => Text(
                      "${controller.balance.value}",
                      style: context.textStyle.titleMedium?.copyWith(
                        color: context.colorScheme.onPrimaryContainer,
                        fontWeight: FontWeight.w600,
                      ),
                      textScaler: const TextScaler.linear(0.9),
                    ),
                  ),
                ],
              ),
            ),
            Spacing.w8,
            GlassIconBox(
              height: 38,
              width: 38,
              child: Stack(
                children: [
                  Icon(
                    Icons.notifications_outlined,
                    color: Colors.white.withValues(alpha: 0.8),
                    size: 20,
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      width: 7,
                      height: 7,
                      decoration: BoxDecoration(
                        color: context.colorScheme.onPrimaryContainer,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacing.w12,
          ],
        ),
      ),
      body: Obx(
        () => controller.senderList.isEmpty
            ? Column(
                crossAxisAlignment: .center,
                mainAxisAlignment: .center,
                children: [
                  EmptyState(),
                  Spacing.h8,
                  GestureDetector(
                    onTap: controller.onAddSender,
                    child: GlassIconBox(
                      borderRadius: 10,
                      width: 80,
                      height: 38,
                      child: Row(
                        mainAxisAlignment: .center,
                        children: [
                          Icon(
                            Icons.add_rounded,
                            color: context.colorScheme.onPrimaryContainer,
                            size: 16,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            "Add",
                            style: context.textStyle.titleSmall?.copyWith(
                              color: context.colorScheme.onPrimaryContainer,
                              fontWeight: FontWeight.w600,
                            ),
                            textScaler: const TextScaler.linear(0.9),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            : SenderListView(),
      ),
    );
  }
}
