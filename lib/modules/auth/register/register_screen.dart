import 'package:alert_hub/core/utils/extensions.dart';
import 'package:alert_hub/core/utils/spacing.dart';
import 'package:alert_hub/core/widgets/rounded_button.dart';
import 'package:alert_hub/core/widgets/text_field_with_label.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'register_controller.dart';

/// @Updated UI to match LoginScreen theme
/// - Same dark primary scaffold
/// - Glass-style input fields with onPrimaryContainer accents
/// - Back button uses Get.back() (no WillPopScope needed)
/// - Inline validation error styling consistent with login

class RegisterScreen extends GetView<RegisterController> {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorScheme.primary,
      resizeToAvoidBottomInset: true,

      // ── Custom AppBar (same vibe as login header) ──────────────
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () => Get.back(),
          child: Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.06),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.white.withValues(alpha: 0.12)),
            ),
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: context.colorScheme.onPrimaryContainer,
              size: 16,
            ),
          ),
        ),
        title: Text(
          "Sign Up",
          style: context.textStyle.headlineSmall?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            letterSpacing: -0.3,
          ),
        ),
      ),
      body: Form(
        key: controller.formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacing.h4,

              // ── Header ─────────────────────────────────────────
              Text(
                "Create Account",
                style: context.textStyle.headlineSmall?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.3,
                ),
              ),
              Spacing.h8,
              Text(
                "Fill in the details to get started",
                style: context.textStyle.bodyMedium?.copyWith(
                  color: Colors.white.withValues(alpha: 0.4),
                ),
              ),

              Spacing.h24,

              // ── Full Name ──────────────────────────────────────
              _FieldLabel("Full Name"),
              Spacing.h8,
              _DarkTextField(
                controller: controller.usernameController,
                hint: "Enter your full name",
                icon: Icons.person_outline_rounded,
                validator: controller.nameValidator,
              ),
              Spacing.h16,

              // ── Country ───────────────────────────────────────
              _FieldLabel("Country"),
              Spacing.h8,
              _DarkTextField(
                controller: controller.countryController,
                hint: "Select your country",
                icon: Icons.public_rounded,
                readOnly: true,
                validator: controller.countryValidator,
                suffixIcon: Icons.keyboard_arrow_down_rounded,
              ),
              Spacing.h16,

              // ── Mobile ────────────────────────────────────────
              _FieldLabel("Mobile Number"),
              Spacing.h8,
              _DarkTextField(
                controller: controller.mobileController,
                hint: "Enter your mobile number",
                icon: Icons.phone_outlined,
                keyboardType: TextInputType.phone,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(10),
                ],
                validator: controller.mobileValidator,
              ),
              Spacing.h16,

              // ── Email ─────────────────────────────────────────
              _FieldLabel("Email"),
              Spacing.h8,
              _DarkTextField(
                controller: controller.emailController,
                hint: "Enter your email",
                icon: Icons.email_outlined,
                keyboardType: TextInputType.emailAddress,
                autofillHints: const [AutofillHints.email],
                validator: controller.emailValidator,
              ),
              Spacing.h16,

              // ── Company Name ──────────────────────────────────
              _FieldLabel("Company Name"),
              Spacing.h8,
              _DarkTextField(
                controller: controller.companyNameController,
                hint: "Enter your company name",
                icon: Icons.business_outlined,
                validator: controller.companyValidator,
              ),
              Spacing.h16,

              // ── Tax ID ────────────────────────────────────────
              _FieldLabel("GSTIN / Tax ID"),
              Spacing.h8,
              _DarkTextField(
                controller: controller.taxIdController,
                hint: "Enter GSTIN or Tax ID",
                icon: Icons.receipt_long_outlined,
                validator: controller.taxValidator,
              ),
              Spacing.h16,

              // ── Password ──────────────────────────────────────
              _FieldLabel("Password"),
              Spacing.h8,
              _DarkPasswordField(
                controller: controller.passwordController,
                hint: "Create a password",
                inputFormatters: [LengthLimitingTextInputFormatter(16)],
                validator: controller.passwordValidator,
              ),
              Spacing.h16,

              // ── Terms & Privacy Checkbox ──────────────────────
              Obx(
                () => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CheckboxListTile(
                      value: controller.isPolicyAccepted.value,
                      activeColor: context.colorScheme.onPrimaryContainer
                          .withValues(alpha: 0.2),
                      checkColor: context.colorScheme.onPrimaryContainer,
                      side: BorderSide(
                        color: context.colorScheme.onPrimaryContainer,
                      ),
                      controlAffinity: ListTileControlAffinity.leading,
                      contentPadding: EdgeInsets.zero,
                      title: Text(
                        "By signing up, I agree to",
                        style: context.textStyle.labelMedium?.copyWith(
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
                                color: context.colorScheme.onPrimaryContainer
                                    .withValues(alpha: 0.4),
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
                        if (value == true) {
                          controller.showPolicyError.value = false;
                        }
                      },
                    ),

                    // Policy error message
                    if (controller.showPolicyError.value)
                      Padding(
                        padding: const EdgeInsets.only(left: 4, top: 4),
                        child: Text(
                          "Please accept Terms & Conditions to continue",
                          style: context.textStyle.labelMedium?.copyWith(
                            color: Colors.redAccent.shade100,
                          ),
                        ),
                      ),
                  ],
                ),
              ),

              Spacing.h16,

              // ── Sign Up Button ────────────────────────────────
              RoundedButton(
                text: "Create Account",
                width: double.infinity,
                isLoading: controller.isLoading.value,
                backgroundColor: context.colorScheme.primaryContainer,
                foregroundColor: context.colorScheme.onPrimaryContainer,
                radius: 14,
                onPressed: controller.signup,
              ),

              Spacing.h16,

              // ── Login link ────────────────────────────────────
              Center(
                child: RichText(
                  text: TextSpan(
                    text: "Already have an account? ",
                    style: context.textStyle.labelSmall?.copyWith(
                      color: context.colorScheme.onPrimaryContainer.withValues(
                        alpha: 0.3,
                      ),
                    ),
                    children: [
                      TextSpan(
                        text: "Sign in",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => Get.back(),
                        style: context.textStyle.titleSmall?.copyWith(
                          color: context.colorScheme.onPrimaryContainer,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Spacing.h24,
            ],
          ),
        ),
      ),
    );
  }
}

// ── Shared private widgets (same as login) ─────────────────────────────────

class _FieldLabel extends StatelessWidget {
  final String text;
  const _FieldLabel(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      style: context.textStyle.labelMedium?.copyWith(
        color: context.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.3,
      ),
    );
  }
}

class _DarkTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final IconData icon;
  final IconData? suffixIcon;
  final TextInputType keyboardType;
  final List<String> autofillHints;
  final List<TextInputFormatter> inputFormatters;
  final String? Function(String?)? validator;
  final bool readOnly;

  const _DarkTextField({
    required this.controller,
    required this.hint,
    required this.icon,
    this.suffixIcon,
    this.keyboardType = TextInputType.text,
    this.autofillHints = const [],
    this.inputFormatters = const [],
    this.validator,
    this.readOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return TextFieldWithLabel(
      validator: validator,
      readOnly: readOnly,
      controller: controller,
      hint: hint,
      textInputType: keyboardType,
      textInputFormatter: inputFormatters,
      inputAction: TextInputAction.done,
      autofillHints: autofillHints,
      borderRadius: 12,
      filled: true,
      fillColor: scheme.onPrimaryContainer.withValues(alpha: 0.05),
      themeColor: scheme.onPrimaryContainer,
      textStyle: context.textStyle.titleSmall?.copyWith(
        color: scheme.onPrimaryContainer.withValues(alpha: 0.6),
      ),
      hintTextStyle: context.textStyle.titleSmall?.copyWith(
        color: scheme.onPrimaryContainer.withValues(alpha: 0.6),
      ),
      suffix: suffixIcon != null
          ? Icon(suffixIcon, color: scheme.onPrimaryContainer, size: 20)
          : null,
      prefix: Icon(icon, color: scheme.onPrimaryContainer, size: 20),

      padding: EdgeInsets.zero,
    );
  }
}

class _DarkPasswordField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final List<TextInputFormatter> inputFormatters;
  final String? Function(String?)? validator;

  const _DarkPasswordField({
    required this.controller,
    required this.hint,
    this.inputFormatters = const [],
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return PassWordTextFormFieldWithLabel(
      controller: controller,
      hint: hint,
      validator: validator,
      textInputFormatter: inputFormatters,
      inputAction: TextInputAction.done,
      borderRadius: 12,
      filled: true,
      fillColor: scheme.onPrimaryContainer.withValues(alpha: 0.05),
      themeColor: scheme.onPrimaryContainer,
      textStyle: TextStyle(color: scheme.onPrimaryContainer, fontSize: 14),
      hintTextStyle: TextStyle(
        color: scheme.onPrimaryContainer.withValues(alpha: 0.6),
        fontSize: 13.5,
      ),
      showPrefixIcon: true,
      padding: EdgeInsets.zero,
    );
  }
}
