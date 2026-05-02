import 'package:alert_hub/core/utils/extensions.dart';
import 'package:alert_hub/core/utils/spacing.dart';
import 'package:flutter/material.dart';

class EmptyInbox extends StatelessWidget {
  const EmptyInbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 72,
            height: 72,
            decoration: BoxDecoration(
              color: context.colorScheme.onPrimary.withValues(alpha: 0.05),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: context.colorScheme.onPrimary.withValues(alpha: 0.1),
              ),
            ),
            child: Icon(
              Icons.inbox_outlined,
              color: context.colorScheme.onPrimary.withValues(alpha: 0.3),
              size: 32,
            ),
          ),
          Spacing.h16,
          Text(
            "No messages yet",
            style: context.textStyle.titleMedium?.copyWith(
              color: context.colorScheme.onPrimary.withValues(alpha: 0.5),
              fontWeight: FontWeight.w500,
            ),
            textScaler: const TextScaler.linear(1.0),
          ),
        ],
      ),
    );
  }
}