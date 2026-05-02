import 'package:alert_hub/core/utils/extensions.dart';
import 'package:alert_hub/modules/dashboard/setting/setting_item.dart';
import 'package:flutter/material.dart';

class SettingsGroup extends StatelessWidget {
  final List<SettingItem> items;
  const SettingsGroup({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.colorScheme.onPrimaryContainer.withValues(alpha: 0.04),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: context.colorScheme.onPrimaryContainer.withValues(alpha: 0.07),
          width: 0.8,
        ),
      ),
      child: Column(children: items),
    );
  }
}
