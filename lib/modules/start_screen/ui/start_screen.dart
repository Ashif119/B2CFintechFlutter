import 'package:alert_hub/core/utils/extensions.dart';
import 'package:alert_hub/core/utils/spacing.dart';
import 'package:alert_hub/core/widgets/rounded_button.dart';
import 'package:alert_hub/core/widgets/text_field_with_label.dart';
import 'package:alert_hub/flavor/flavor_config.dart';
import 'package:alert_hub/modules/start_screen/start_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StartScreen extends GetView<SplashController> {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final scheme = context.colorScheme;

    return Scaffold(
      backgroundColor: scheme.primary,
      body: Obx(
        () => Column(
          children: [
            // ── Top hero section ──────────────────────────
            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Radial glow
                  Positioned(
                    top: size.height * 0.05,
                    child: Container(
                      width: size.width * 0.9,
                      height: size.width * 0.9,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: RadialGradient(
                          colors: [
                            scheme.primaryContainer.withValues(alpha: 0.18),
                            Colors.transparent,
                          ],
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Logo container
                      Container(
                        width: 96,
                        height: 96,
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.06),
                          borderRadius: BorderRadius.circular(28),
                          border: Border.all(
                            color: Colors.white.withValues(alpha: 0.12),
                          ),
                        ),
                        child: Center(
                          child: Image.asset(
                            FlavorConfig.instance.logoAsset,
                            width: 52,
                            height: 52,
                          ),
                        ),
                      ),
                      Spacing.h24,
                      Text(
                        FlavorConfig.instance.appTitle,
                        style: context.textStyle.headlineSmall?.copyWith(
                          color: context.colorScheme.secondaryContainer,
                        ),
                      ),
                      Spacing.h8,
                      Text(
                        "Stay informed. Stay safe.",
                        style: context.textStyle.bodySmall?.copyWith(
                          color: context.colorScheme.secondaryContainer
                              .withValues(alpha: 0.45),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // ── Bottom action section ─────────────────────
            AnimatedSize(
              duration: const Duration(milliseconds: 350),
              curve: Curves.easeInOut,
              child: Container(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 48),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Feature pills — always visible
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FeaturePill(
                          "Real-time alerts",
                          const Color(0xFF7F77DD),
                        ),
                        FeaturePill("Multi-region", const Color(0xFF5DCAA5)),
                        FeaturePill("Instant notify", const Color(0xFFF0997B)),
                      ],
                    ),
                    Spacing.h24,
                    // ── Domain Field ──────────────────────
                    if (!controller.isDomainAdded.value) ...[
                      _DomainField(controller: controller),
                      Spacing.h12,
                      RoundedButton(
                        text: "Check Domain",
                        width: double.infinity,
                        isLoading: controller.isLoading.value,
                        backgroundColor: scheme.primaryContainer,
                        foregroundColor: scheme.onPrimaryContainer,
                        radius: 14,
                        onPressed: () => controller.checkDomain(
                          controller.domainController.text.toString(),
                        ),
                      ),
                    ],
                    // ── Auth Buttons (after domain verified) ──
                    if (controller.isDomainAdded.value) ...[
                      RoundedButton(
                        text: "Create account",
                        width: double.infinity,
                        isLoading: false,
                        backgroundColor: scheme.primaryContainer,
                        foregroundColor: scheme.onPrimaryContainer,
                        radius: 14,
                        onPressed: controller.registerScreen,
                      ),
                      Spacing.h12,
                      RoundedButton(
                        text: "Sign in",
                        width: double.infinity,
                        isLoading: false,
                        backgroundColor: Colors.white.withValues(alpha: 0.05),
                        foregroundColor: Colors.white.withValues(alpha: 0.75),
                        radius: 14,
                        onPressed: controller.login,
                      ),
                    ],
                    Spacing.h16,
                    Text(
                      "By continuing you agree to our Terms & Privacy",
                      style: context.textStyle.labelMedium?.copyWith(
                        color: context.colorScheme.onPrimaryContainer
                            .withValues(alpha: 0.25),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ── Domain Input Field ─────────────────────────────────────────────────────

class _DomainField extends StatelessWidget {
  final SplashController controller;
  const _DomainField({required this.controller});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return TextFieldWithLabel(
      controller: controller.domainController,
      hint: "Enter your domain (e.g. example.com)",
      textInputType: TextInputType.url,
      inputAction: TextInputAction.done,
      borderRadius: 12,
      filled: true,
      fillColor: Colors.white.withValues(alpha: 0.05),
      themeColor: scheme.onPrimaryContainer,
      textStyle: const TextStyle(color: Colors.white, fontSize: 14),
      hintTextStyle: TextStyle(
        color: scheme.onPrimaryContainer.withValues(alpha: 0.6),
        fontSize: 13.5,
      ),
      prefix: Icon(
        Icons.language_rounded,
        color: scheme.onPrimaryContainer,
        size: 20,
      ),
      padding: EdgeInsets.zero,
      onSubmitted: (_) =>
          controller.checkDomain(controller.domainController.text.trim()),
    );
  }
}

// ── Feature Pill ───────────────────────────────────────────────────────────

class FeaturePill extends StatelessWidget {
  final String label;
  final Color dotColor;
  const FeaturePill(this.label, this.dotColor, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 5,
            height: 5,
            decoration: BoxDecoration(color: dotColor, shape: BoxShape.circle),
          ),
          Spacing.w4,
          Flexible(
            child: Text(
              label,
              style: context.textStyle.bodySmall?.copyWith(
                color: context.colorScheme.secondaryContainer.withValues(
                  alpha: 0.35,
                ),
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}
