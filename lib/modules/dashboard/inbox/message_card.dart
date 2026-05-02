import 'package:alert_hub/core/utils/extensions.dart';
import 'package:alert_hub/core/utils/spacing.dart';
import 'package:alert_hub/modules/dashboard/data/model/whatsapp_sender_contact_result.dart';
import 'package:flutter/material.dart';

class MessageCard extends StatelessWidget {
  final WhatsappSenderContactResult msg;
  final ColorScheme scheme;
  const MessageCard({super.key, required this.msg, required this.scheme});

  @override
  Widget build(BuildContext context) {
    final isRead = msg.unreadMsg != true;
    final name = msg.contactName?.isNotEmpty == true ? msg.contactName! : msg.mobileNo ?? '';
    final preview = msg.messageText?.toString() ?? '';
    final time = msg.modifyDate ?? '';

    return Container(
      decoration: BoxDecoration(
        color: isRead
            ? context.colorScheme.onPrimaryContainer.withValues(alpha: 0.04)
            : context.colorScheme.onPrimaryContainer.withValues(alpha: 0.07),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: isRead
              ? context.colorScheme.onPrimaryContainer.withValues(alpha: 0.07)
              : context.colorScheme.onPrimaryContainer.withValues(alpha: 0.12),
          width: 0.8,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: scheme.onPrimaryContainer.withValues(alpha: 0.12),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: scheme.onPrimaryContainer.withValues(alpha: 0.25),
                  width: 0.8,
                ),
              ),
              child: Center(
                child: Text(
                  name.isNotEmpty ? name[0].toUpperCase() : '?',
                  style: context.textStyle.titleSmall?.copyWith(
                    color: scheme.onPrimaryContainer,
                    fontWeight: FontWeight.w600,
                  ),
                  textScaler: const TextScaler.linear(0.9),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          name,
                          style: context.textStyle.labelSmall?.copyWith(
                            color: context.colorScheme.onPrimaryContainer
                                .withValues(alpha: isRead ? 0.7 : 1.0),
                            fontWeight: isRead ? FontWeight.w400 : FontWeight.w600,
                          ),
                          textScaler: const TextScaler.linear(0.9),
                        ),
                      ),
                      Text(
                        time,
                        style: context.textStyle.labelSmall?.copyWith(
                          color: context.colorScheme.onPrimaryContainer
                              .withValues(alpha: 0.3),
                        ),
                        textScaler: const TextScaler.linear(0.9),
                      ),
                    ],
                  ),
                  Spacing.h4,
                  Text(
                    preview.isNotEmpty ? preview : 'No message',
                    style: context.textStyle.bodyMedium?.copyWith(
                      color: context.colorScheme.onPrimaryContainer
                          .withValues(alpha: 0.4),
                    ),
                    textScaler: const TextScaler.linear(0.9),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            if (!isRead) ...[
              Spacing.w8,
              Container(
                width: 7,
                height: 7,
                margin: const EdgeInsets.only(top: 4),
                decoration: BoxDecoration(
                  color: scheme.onPrimaryContainer,
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
