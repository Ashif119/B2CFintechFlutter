import 'package:alert_hub/core/utils/extensions.dart';
import 'package:alert_hub/core/utils/spacing.dart';
import 'package:alert_hub/core/widgets/glass_icon_box.dart';
import 'package:alert_hub/modules/dashboard/dashboard_controller.dart';
import 'package:alert_hub/modules/dashboard/data/model/sender_for_chat_request.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ── Sender List ────────────────────────────────────────────────────────────

class SenderListView extends GetView<DashboardController> {
  const SenderListView({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 16, 25, 12),
          child: Row(
            children: [
              Text(
                "Sender Details",
                style: context.textStyle.titleMedium?.copyWith(
                  color: context.colorScheme.onPrimaryContainer.withValues(
                    alpha: 0.9,
                  ),
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.1,
                ),
                textScaler: const TextScaler.linear(0.9),
              ),
              const Spacer(),
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
                        color: scheme.onPrimaryContainer,
                        size: 16,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        "Add",
                        style: context.textStyle.titleSmall?.copyWith(
                          color: scheme.onPrimaryContainer,
                          fontWeight: FontWeight.w600,
                        ),
                        textScaler: const TextScaler.linear(0.9),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
            itemCount: controller.senderList.length,
            separatorBuilder: (_, _) => const SizedBox(height: 10),
            itemBuilder: (context, index) {
              final sender = controller.senderList[index];
              return SenderCard(sender: sender);
            },
          ),
        ),
      ],
    );
  }
}

class SenderCard extends GetView<DashboardController> {
  final SenderForChatRequest sender;
  const SenderCard({super.key, required this.sender});

  @override
  Widget build(BuildContext context) {
    return GlassIconBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${sender.countryCode ?? ''}-${sender.mobileNo ?? ''}",
                  style: context.textStyle.titleMedium?.copyWith(
                    color: context.colorScheme.onPrimaryContainer,
                    fontWeight: FontWeight.w600,
                  ),
                  textScaler: const TextScaler.linear(0.9),
                ),
                Text(
                  sender.callBackURL ?? '',
                  style: context.textStyle.titleMedium?.copyWith(
                    color: context.colorScheme.onPrimaryContainer,
                    fontWeight: FontWeight.w600,
                  ),
                  textScaler: const TextScaler.linear(0.9),
                ),
                Spacing.h8,
                Row(
                  children: [
                    Icon(
                      Icons.calendar_today_outlined,
                      size: 12,
                      color: context.colorScheme.onPrimaryContainer.withValues(
                        alpha: 0.35,
                      ),
                    ),
                    Spacing.w4,
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        "Entry Date : ${sender.entryDate ?? ''}",
                        style: context.textStyle.labelMedium?.copyWith(
                          color: context.colorScheme.onPrimaryContainer
                              .withValues(alpha: 0.4),
                        ),
                        textScaler: const TextScaler.linear(0.9),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: context.colorScheme.onPrimary.withValues(alpha: 0.06),
            height: 1,
            thickness: 0.8,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () => controller.onEditSender(sender),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF0A500).withValues(alpha: 0.15),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color(0xFFF0A500).withValues(alpha: 0.3),
                        width: 0.8,
                      ),
                    ),
                    child: const Icon(
                      Icons.edit_outlined,
                      color: Color(0xFFF0A500),
                      size: 18,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: () => controller.onDeleteSender(sender),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.redAccent.withValues(alpha: 0.12),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.redAccent.withValues(alpha: 0.3),
                        width: 0.8,
                      ),
                    ),
                    child: const Icon(
                      Icons.delete_outline_rounded,
                      color: Colors.redAccent,
                      size: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
