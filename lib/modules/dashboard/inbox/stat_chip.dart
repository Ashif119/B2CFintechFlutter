import 'package:alert_hub/core/utils/extensions.dart';
import 'package:flutter/material.dart';



class MessageData {
  final String sender, preview, time, type;
  final bool isRead;
  const MessageData({
    required this.sender,
    required this.preview,
    required this.time,
    required this.isRead,
    required this.type,
  });
}

class StatChip extends StatelessWidget {
  final String label, value;
  final ColorScheme scheme;
  final bool isHighlighted;

  const StatChip({super.key,
    required this.label,
    required this.value,
    required this.scheme,
    this.isHighlighted = false,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: isHighlighted
              ? scheme.primaryContainer.withValues(alpha: 0.18)
              : Colors.white.withValues(alpha: 0.05),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isHighlighted
                ? scheme.onPrimaryContainer.withValues(alpha: 0.25)
                : Colors.white.withValues(alpha: 0.08),
            width: 0.8,
          ),
        ),
        child: Column(
          children: [
            Text(
              value,
              style: context.textStyle.titleLarge?.copyWith(
                color: isHighlighted
                    ? scheme.onPrimaryContainer
                    : context.colorScheme.onPrimaryContainer.withValues(
                  alpha: 0.5,
                ),
                fontWeight: FontWeight.w700,
              ),
              textScaler: const TextScaler.linear(1.1),
            ),
            const SizedBox(height: 2),
            Text(
              label,
              style: context.textStyle.labelMedium?.copyWith(
                color: context.colorScheme.onPrimaryContainer.withValues(
                  alpha: 0.4,
                ),
              ),
              textScaler: const TextScaler.linear(0.9),
            ),
          ],
        ),
      ),
    );
  }
}