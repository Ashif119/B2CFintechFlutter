import 'package:alert_hub/core/utils/spacing.dart';
import 'package:alert_hub/core/widgets/text_field_with_label.dart';
import 'package:alert_hub/flavor/flavor_config.dart';
import 'package:alert_hub/modules/auth/login/login_controller.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../core/utils/extensions.dart';
import '../../../core/widgets/rounded_button.dart';

/// @Created by akash on 18-02-2026.
/// Know more about author at https://akash.cloudemy.in

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;

    return Scaffold(
      backgroundColor: scheme.primary,
      resizeToAvoidBottomInset: false,
      body: Form(
        key: controller.formKey,
        child: Column(
          children: [
            Spacing.h60,
            // ── Header ─────────────────────────────
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      width: 96,
                      height: 96,
                      decoration: BoxDecoration(
                        color: context.colorScheme.onPrimary.withValues(
                          alpha: 0.06,
                        ),
                        borderRadius: BorderRadius.circular(28),
                        border: Border.all(
                          color: context.colorScheme.onPrimary.withValues(
                            alpha: 0.12,
                          ),
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
                    Spacing.h16,
                    Text(
                      "Welcome back",
                      style: context.textStyle.headlineSmall?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.3,
                      ),
                    ),
                    Spacing.h4,
                    Text(
                      "Sign in to your account",
                      style: context.textStyle.bodyMedium?.copyWith(
                        color: Colors.white.withValues(alpha: 0.4),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: -80,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Container(
                      width: 360,
                      height: 360,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: RadialGradient(
                          colors: [
                            scheme.primaryContainer.withValues(alpha: 0.2),
                            Colors.transparent,
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Spacing.h36,

            // ── Form fields ────────────────────────
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FieldLabel("Email"),
                  Spacing.h8,
                  DarkTextField(
                    controller: controller.emailController,
                    hint: "Enter your email",
                    icon: Icons.email_outlined,
                    keyboardType: TextInputType.emailAddress,
                    autofillHints: [AutofillHints.email],
                    validator: (v) {
                      if (v == null || v.trim().isEmpty) {
                        return "Email is required";
                      }

                      final emailRegex = RegExp(
                        r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$",
                      );

                      if (!emailRegex.hasMatch(v.trim())) {
                        return "Enter valid email";
                      }

                      return null;
                    },
                  ),
                  Spacing.h16,

                  FieldLabel("Password"),
                  Spacing.h8,
                  DarkPasswordField(
                    controller: controller.passwordController,
                    hint: "Enter your password",
                    inputFormatters: [LengthLimitingTextInputFormatter(16)],
                    validator: (v) {
                      if (v == null || v.isEmpty) {
                        return "Password is required";
                      }
                      if (v.length < 6) {
                        return "Password must be at least 6 characters";
                      }
                      return null;
                    },
                  ),
                  Spacing.h12,

                  // Remember me + Forgot password
                  Row(
                    children: [
                      RememberMeCheckbox(controller: controller),
                      Spacing.w8,
                      Text(
                        "Remember me",
                        style: context.textStyle.titleSmall?.copyWith(
                          color: context.colorScheme.onPrimaryContainer
                              .withValues(alpha: 0.5),
                        ),
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: Text(
                          "Forgot password?",
                          style: context.textStyle.titleSmall?.copyWith(
                            color: context.colorScheme.onPrimaryContainer,
                          ),
                        ),
                      ),
                    ],
                  ),

                  Spacing.h24,
                  Obx(
                    () => CheckboxListTile(
                      value: controller.isPolicyAccepted.value,
                      activeColor: context.colorScheme.onPrimaryContainer
                          .withValues(alpha: 0.2),
                      checkColor: context.colorScheme.onPrimaryContainer,
                      side: BorderSide(
                        color: context.colorScheme.onPrimaryContainer,
                        // width: 1.5,
                      ),
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text(
                        "By signing in, I agree to",
                        style: context.textStyle.titleSmall?.copyWith(
                          color: context.colorScheme.onPrimaryContainer
                              .withValues(alpha: 0.4),
                        ),
                      ),
                      subtitle: RichText(
                        text: TextSpan(
                          style: context.textStyle.titleSmall?.copyWith(
                            fontWeight: FontWeight.w500,
                            color: context.colorScheme.onPrimaryContainer,
                          ),
                          children: [
                            TextSpan(
                              text: "Terms & Conditions",
                              recognizer: TapGestureRecognizer()..onTap = () {},
                              style: context.textStyle.titleSmall?.copyWith(
                                decoration: TextDecoration.underline,
                                color: context.colorScheme.onPrimaryContainer,
                                decorationColor:
                                    context.colorScheme.onPrimaryContainer,
                              ),
                            ),
                            TextSpan(
                              text: " & ",
                              style: context.textStyle.titleSmall?.copyWith(
                                color: context.colorScheme.onPrimary.withValues(
                                  alpha: 0.4,
                                ),
                              ),
                            ),
                            TextSpan(
                              text: "Privacy Policy",
                              recognizer: TapGestureRecognizer()..onTap = () {},
                              style: context.textStyle.titleSmall?.copyWith(
                                decoration: TextDecoration.underline,
                                color: context.colorScheme.onPrimaryContainer,
                                decorationColor:
                                    context.colorScheme.onPrimaryContainer,
                              ),
                            ),
                          ],
                        ),
                      ),
                      onChanged: (value) {
                        controller.isPolicyAccepted.value = value ?? false;
                      },
                    ),
                  ),
                  // Sign in button
                  Obx(
                    () => RoundedButton(
                      text: "Sign in",
                      isLoading: controller.isLoading.value,
                      width: double.infinity,
                      radius: 14,
                      backgroundColor: scheme.primaryContainer,
                      foregroundColor: scheme.onPrimaryContainer,
                      onPressed: () {
                        if (controller.formKey.currentState!.validate()) {
                          controller.login();
                        }
                      },
                    ),
                  ),

                  Spacing.h16,

                  // Sign up link
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: "Don't have an account? ",
                        style: context.textStyle.titleSmall?.copyWith(
                          color: context.colorScheme.onPrimaryContainer
                              .withValues(alpha: 0.4),
                        ),
                        children: [
                          TextSpan(
                            text: "Sign up",
                            style: context.textStyle.titleSmall?.copyWith(
                              color: context.colorScheme.onPrimaryContainer,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Spacing.h32,
                ],
              ),
            ),
            Spacer(),
            Text(
              "App Version:1.0.0",
              style: context.textStyle.bodySmall?.copyWith(
                color: Colors.white.withValues(alpha: 0.4),
              ),
            ),
            Spacing.h16,
          ],
        ),
      ),
    );
  }
}

class FieldLabel extends StatelessWidget {
  final String text;
  const FieldLabel(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      style: context.textStyle.labelMedium?.copyWith(
        color: context.colorScheme.onPrimaryContainer,
        letterSpacing: 0.3,
      ),
    );
  }
}

class DarkTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final IconData icon;
  final TextInputType keyboardType;
  final List<String> autofillHints;
  final String? Function(String?)? validator;

  const DarkTextField({
    super.key,
    required this.controller,
    required this.hint,
    required this.icon,
    this.keyboardType = TextInputType.text,
    this.autofillHints = const [],
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldWithLabel(
      validator: validator,
      controller: controller,
      hint: hint,
      textInputType: keyboardType,
      inputAction: TextInputAction.done,
      autofillHints: autofillHints,
      borderRadius: 12,
      filled: true,
      fillColor: context.colorScheme.onPrimaryContainer.withValues(alpha: 0.05),
      themeColor: context.colorScheme.onPrimaryContainer,
      textStyle: context.textStyle.titleSmall?.copyWith(
        color: context.colorScheme.onPrimaryContainer,
      ),
      hintTextStyle: context.textStyle.titleSmall?.copyWith(
        color: context.colorScheme.onPrimaryContainer,
      ),
      prefix: Icon(
        icon,
        color: context.colorScheme.onPrimaryContainer,
        size: 20,
      ),

      padding: EdgeInsets.zero,
    );
  }
}

class DarkPasswordField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final List<TextInputFormatter> inputFormatters;
  final String? Function(String?)? validator;

  const DarkPasswordField({
    super.key,
    required this.controller,
    required this.hint,
    this.inputFormatters = const [],
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return PassWordTextFormFieldWithLabel(
      controller: controller,
      hint: hint,
      validator: validator,
      textInputFormatter: inputFormatters,
      inputAction: TextInputAction.done,
      borderRadius: 12,
      filled: true,
      fillColor: context.colorScheme.onPrimaryContainer.withValues(alpha: 0.05),
      themeColor: context.colorScheme.onPrimaryContainer,
      textStyle: context.textStyle.titleSmall?.copyWith(
        color: context.colorScheme.onPrimaryContainer,
      ),
      hintTextStyle: context.textStyle.titleSmall?.copyWith(
        color: context.colorScheme.onPrimaryContainer,
      ),
      showPrefixIcon: true,
      padding: EdgeInsets.zero,
    );
  }
}

class RememberMeCheckbox extends StatefulWidget {
  final LoginController controller;
  const RememberMeCheckbox({super.key, required this.controller});

  @override
  State<RememberMeCheckbox> createState() => _RememberMeCheckboxState();
}

class _RememberMeCheckboxState extends State<RememberMeCheckbox> {
  bool checked = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() => checked = !checked),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        width: 18,
        height: 18,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: checked
              ? context.colorScheme.onPrimaryContainer.withValues(alpha: 0.15)
              : Colors.transparent,
          border: Border.all(
            color: checked
                ? context.colorScheme.onPrimaryContainer
                : Colors.white.withValues(alpha: 0.2),
            width: 0.5,
          ),
        ),
        child: checked
            ? Icon(
                Icons.check_rounded,
                size: 12,
                color: context.colorScheme.onPrimaryContainer,
              )
            : null,
      ),
    );
  }
}
