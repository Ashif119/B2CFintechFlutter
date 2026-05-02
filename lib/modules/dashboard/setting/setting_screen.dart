import 'package:alert_hub/core/utils/extensions.dart';
import 'package:alert_hub/core/utils/spacing.dart';
import 'package:alert_hub/core/widgets/custom_app_bar.dart';
import 'package:alert_hub/modules/dashboard/dashboard_controller.dart';
import 'package:alert_hub/modules/dashboard/setting/logout_section.dart';
import 'package:alert_hub/modules/dashboard/setting/profile_card.dart';
import 'package:alert_hub/modules/dashboard/setting/sectiob_label.dart';
import 'package:alert_hub/modules/dashboard/setting/setting_item.dart';
import 'package:alert_hub/modules/dashboard/setting/settings_group.dart';
import 'package:alert_hub/route/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsScreen extends GetView<DashboardController> {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return Scaffold(
      backgroundColor: scheme.primary,
      appBar: CustomAppBar(
        middle: Text(
          "Settings",
          style: context.textStyle.titleLarge?.copyWith(
            color: context.colorScheme.onPrimaryContainer,
            fontWeight: FontWeight.w600,
            letterSpacing: -0.3,
          ),
          textScaler: const TextScaler.linear(1.2),
        ),
        autoImplyLeading: false,
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 32),
        children: [
          Spacing.h16,
          // Profile card
          ProfileCard(scheme: scheme),
          Spacing.h16,
          // Account section
          SectionLabel(label: "Account"),
          Spacing.h8,
          SettingsGroup(
            items: [
              SettingItem(
                icon: Icons.person_outline_rounded,
                iconColor: const Color(0xFF4FC3F7),
                label: "Edit Profile",
                onTap: () => Get.toNamed(AppRoutes.updateProfile),
              ),
              SettingItem(
                icon: Icons.lock_outline_rounded,
                iconColor: const Color(0xFFF0A500),
                label: "Change Password",
                onTap: () {},
              ),
              SettingItem(
                icon: Icons.phone_outlined,
                iconColor: const Color(0xFF81C784),
                label: "Linked Numbers",
                trailing: "1 Active",
                onTap: () {},
              ),
            ],
          ),
          Spacing.h16,
          // Configuration section - matching the image
          SectionLabel(label: "Configuration"),
          Spacing.h8,
          SettingsGroup(
            items: [
              SettingItem(
                icon: Icons.smart_toy_outlined,
                iconColor: const Color(0xFFBA68C8),
                label: "Bot Reply Setting",
                onTap: () {
                  Get.snackbar(
                    "Bot Reply Setting",
                    "Coming soon",
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.white.withValues(alpha: 0.1),
                    colorText: Colors.white,
                  );
                },
              ),
              SettingItem(
                icon: Icons.dns_outlined,
                iconColor: const Color(0xFF4FC3F7),
                label: "IP Master",
                onTap: () {
                  Get.snackbar(
                    "IP Master",
                    "Coming soon",
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.white.withValues(alpha: 0.1),
                    colorText: Colors.white,
                  );
                },
              ),
              SettingItem(
                icon: Icons.vpn_key_outlined,
                iconColor: const Color(0xFFF0A500),
                label: "Generate Api Keys",
                onTap: () {
                  Get.snackbar(
                    "Generate Api Keys",
                    "Coming soon",
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.white.withValues(alpha: 0.1),
                    colorText: Colors.white,
                  );
                },
              ),
              SettingItem(
                icon: Icons.message_outlined,
                iconColor: const Color(0xFF81C784),
                label: "WhatsApp Template",
                onTap: () {
                  Get.snackbar(
                    "WhatsApp Template",
                    "Coming soon",
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.white.withValues(alpha: 0.1),
                    colorText: Colors.white,
                  );
                },
                showDivider: false,
              ),
            ],
          ),
          Spacing.h16,
          // App section
          SectionLabel(label: "App"),
          Spacing.h8,
          SettingsGroup(
            items: [
              SettingItem(
                icon: Icons.dark_mode_outlined,
                iconColor: const Color(0xFF90A4AE),
                label: "Appearance",
                trailing: "Dark",
                onTap: () {},
                showDivider: false,
              ),
            ],
          ),
          Spacing.h16,
          // Support section
          SectionLabel(label: "Support"),
          Spacing.h8,
          SettingsGroup(
            items: [
              SettingItem(
                icon: Icons.help_outline_rounded,
                iconColor: const Color(0xFF81C784),
                label: "Help & FAQ",
                onTap: () {},
              ),
              SettingItem(
                icon: Icons.privacy_tip_outlined,
                iconColor: const Color(0xFF4FC3F7),
                label: "Privacy Policy",
                onTap: () {},
              ),
              SettingItem(
                icon: Icons.description_outlined,
                iconColor: const Color(0xFFF0A500),
                label: "Terms of Service",
                onTap: () {},
                showDivider: false,
              ),
            ],
          ),
          Spacing.h32,
          // Logout Section - Redesigned
          LogoutButton(scheme: scheme),
          Spacing.h24,
          Center(
            child: Text(
              "App Version: 1.0.0",
              style: context.textStyle.labelMedium?.copyWith(
                color: scheme.onPrimary.withValues(alpha: 0.2),
              ),
              textScaler: const TextScaler.linear(0.8),
            ),
          ),
        ],
      ),
    );
  }
}
