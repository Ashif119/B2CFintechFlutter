import 'package:alert_hub/core/utils/extensions.dart';
import 'package:alert_hub/core/utils/spacing.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LogoutButton extends StatelessWidget {
  final ColorScheme scheme;
  const LogoutButton({required this.scheme});

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          child: Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: scheme.primary,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.white.withValues(alpha: 0.1),
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.3),
                  blurRadius: 20,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.redAccent.withValues(alpha: 0.12),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.logout_rounded,
                    color: Colors.redAccent,
                    size: 30,
                  ),
                ),
                Spacing.h16,
                Text(
                  "Logout",
                  style: context.textStyle.titleLarge?.copyWith(
                    color: scheme.onPrimaryContainer,
                    fontWeight: FontWeight.w600,
                  ),
                  textScaler: const TextScaler.linear(1.2),
                ),
                Spacing.h8,
                Text(
                  "Are you sure you want to logout?",
                  style: context.textStyle.labelLarge?.copyWith(
                    color: scheme.onPrimaryContainer.withValues(alpha: 0.5),
                    fontWeight: FontWeight.w400,
                  ),
                  textScaler: const TextScaler.linear(1.0),
                ),
                Spacing.h24,
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.08),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: Colors.white.withValues(alpha: 0.15),
                              width: 0.8,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              "Cancel",
                              style: context.textStyle.labelLarge?.copyWith(
                                color: scheme.onPrimaryContainer.withValues(
                                  alpha: 0.5,
                                ),
                                fontWeight: FontWeight.w400,
                              ),
                              textScaler: const TextScaler.linear(1.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Spacing.w12,
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                          Get.snackbar(
                            "Logout",
                            "Logged out successfully",
                            snackPosition: SnackPosition.BOTTOM,
                            backgroundColor: Colors.green.withValues(
                              alpha: 0.2,
                            ),
                            colorText: Colors.white,
                            duration: const Duration(seconds: 2),
                          );
                          // Add actual logout logic here
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [Color(0xFFD32F2F), Color(0xFFC62828)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.redAccent.withValues(alpha: 0.3),
                                blurRadius: 8,
                                offset: const Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              "Logout",
                              style: context.textStyle.labelLarge?.copyWith(
                                color: scheme.onPrimaryContainer,
                                fontWeight: FontWeight.w400,
                              ),
                              textScaler: const TextScaler.linear(1.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showLogoutDialog(context),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14),
        decoration: BoxDecoration(
          color: Colors.redAccent.withValues(alpha: 0.08),
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: Colors.redAccent.withValues(alpha: 0.25),
            width: 0.8,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.logout_rounded, color: Colors.redAccent, size: 18),
            Spacing.w8,
            Text(
              "Logout",
              style: context.textStyle.labelLarge?.copyWith(
                color: Colors.redAccent,
                fontWeight: FontWeight.w400,
              ),
              textScaler: const TextScaler.linear(1.0),
            ),
          ],
        ),
      ),
    );
  }
}
