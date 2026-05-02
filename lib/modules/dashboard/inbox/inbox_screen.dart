import 'package:alert_hub/core/utils/extensions.dart';
import 'package:alert_hub/core/utils/spacing.dart';
import 'package:alert_hub/core/widgets/custom_app_bar.dart';
import 'package:alert_hub/core/widgets/glass_icon_box.dart';
import 'package:alert_hub/modules/dashboard/dashboard_controller.dart';
import 'package:alert_hub/modules/dashboard/inbox/inbox_empty.dart';
import 'package:alert_hub/modules/dashboard/inbox/message_card.dart';
import 'package:alert_hub/modules/dashboard/inbox/stat_chip.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InboxScreen extends GetView<DashboardController> {
  const InboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return Scaffold(
      backgroundColor: scheme.primary,
      appBar: CustomAppBar(
        middle: Text(
          "Inbox",
          style: context.textStyle.titleLarge?.copyWith(
            color: context.colorScheme.onPrimaryContainer,
            fontWeight: FontWeight.w600,
            letterSpacing: -0.3,
          ),
          textScaler: const TextScaler.linear(1.2),
        ),
        autoImplyLeading: false,
        showActions: true,
        trailing: Row(
          children: [
            GlassIconBox(
              height: 38,
              width: 38,
              child: Icon(
                Icons.search_rounded,
                color: Colors.white.withValues(alpha: 0.8),
                size: 20,
              ),
            ),
            Spacing.w8,
            GlassIconBox(
              height: 38,
              width: 38,
              child: Icon(
                Icons.filter_list_rounded,
                color: Colors.white.withValues(alpha: 0.8),
                size: 20,
              ),
            ),
            Spacing.w8,
          ],
        ),
      ),
      body: Obx(() {
        final messages = controller.whatsappSenderContact;
        final unreadCount = messages.where((m) => m.unreadMsg == true).length;
        return Column(
          children: [
            Spacing.h16,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  StatChip(
                    label: "Total",
                    value: "${messages.length}",
                    scheme: scheme,
                  ),
                  const SizedBox(width: 10),
                  StatChip(
                    label: "Unread",
                    value: "$unreadCount",
                    scheme: scheme,
                    isHighlighted: unreadCount > 0,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 12),
              child: Row(
                children: [
                  Text(
                    "Recent Messages",
                    style: context.textStyle.labelLarge?.copyWith(
                      color: scheme.onPrimaryContainer.withValues(alpha: 0.9),
                      fontWeight: FontWeight.w600,
                    ),
                    textScaler: const TextScaler.linear(1.0),
                  ),
                ],
              ),
            ),
            Expanded(
              child: messages.isEmpty
                  ? EmptyInbox()
                  : ListView.separated(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
                      itemCount: messages.length,
                      separatorBuilder: (_, _) => const SizedBox(height: 8),
                      itemBuilder: (context, index) =>
                          MessageCard(msg: messages[index], scheme: scheme),
                    ),
            ),
          ],
        );
      }),
    );
  }
}
