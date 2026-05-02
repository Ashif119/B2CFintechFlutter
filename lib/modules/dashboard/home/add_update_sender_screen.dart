import 'package:alert_hub/core/common_controller.dart';
import 'package:alert_hub/core/utils/extensions.dart';
import 'package:alert_hub/core/utils/spacing.dart';
import 'package:alert_hub/core/widgets/rounded_button.dart';
import 'package:alert_hub/core/widgets/text_field_with_label.dart';
import 'package:alert_hub/modules/dashboard/dashboard_controller.dart';
import 'package:alert_hub/modules/dashboard/data/model/sender_for_chat_request.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class AddUpdateSenderScreen extends GetView<DashboardController> {
  final SenderForChatRequest? sender;
  const AddUpdateSenderScreen({super.key, this.sender});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          sender != null ? "Edit" : "Add",
          style: context.textStyle.headlineMedium?.copyWith(
            color: context.colorScheme.onPrimaryContainer,
            fontWeight: FontWeight.bold,
          ),
        ),
        Flexible(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Spacing.h16,
                if (sender == null) ...[
                  DarkTextField(
                    controller: controller.appController,
                    hint: "Select App",
                    icon: Icons.arrow_drop_down,
                    isReadOnly: true,
                    onTap: controller.openWebsiteAppSheet,
                  ),
                  Spacing.h16,
                ],
                DarkTextField(
                  controller: CommonController.to.countryController,
                  isReadOnly: true,
                  hint: "Select Country",
                  icon: Icons.arrow_drop_down,
                  onTap: CommonController.to.openCountrySheet,
                ),
                Spacing.h16,
                DarkTextField(
                  controller: controller.mobileController,
                  hint: "Enter Mobile Number",
                  keyboardType: TextInputType.number,
                ),
                Spacing.h16,
                DarkTextField(
                  controller: controller.protocolController,
                  hint: "Select Protocol",
                  isReadOnly: true,
                  icon: Icons.arrow_drop_down,
                  onTap: controller.openProtocolSheet,
                ),
                Spacing.h16,
                DarkTextField(
                  controller: controller.callBackUrlController,
                  hint: "Enter Callback Url",
                  keyboardType: TextInputType.url,
                ),
                Spacing.h16,
                DarkTextField(
                  controller: controller.phoneNumberIdController,
                  hint: "Enter Phone Number ID",
                ),
                Spacing.h16,
                DarkTextField(
                  controller: controller.wabaController,
                  hint: "Enter WABA Id",
                ),
                Spacing.h16,
                DarkTextField(
                  controller: controller.tokenController,
                  hint: "Enter Token",
                ),
                Spacing.h16,
                RoundedButton(
                  text: sender != null ? "Update" : "Save",
                  width: double.infinity,
                  radius: 14,
                  backgroundColor: context.colorScheme.primaryContainer,
                  foregroundColor: context.colorScheme.onPrimaryContainer,
                  onPressed: () =>
                      controller.submitSender(senderId: sender?.id ?? 0,countryId:sender?.countryId??0,
                      countryCode:sender?.countryCode.toString()??""
                      ),
                ),
                Spacing.h16,
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class DarkTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final bool isReadOnly;
  final IconData? icon;
  final VoidCallback? onTap;
  final TextInputType keyboardType;
  final List<String> autofillHints;
  final String? Function(String?)? validator;

  const DarkTextField({
    super.key,
    required this.controller,
    required this.hint,
    this.icon,
    this.keyboardType = TextInputType.text,
    this.autofillHints = const [],
    this.onTap,
    this.validator,
    this.isReadOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldWithLabel(
      validator: validator,
      controller: controller,
      hint: hint,
      readOnly: isReadOnly,
      textInputType: keyboardType,
      inputAction: TextInputAction.done,
      autofillHints: autofillHints,
      borderRadius: 12,
      onTap: onTap,
      filled: true,
      fillColor: context.colorScheme.onPrimaryContainer.withValues(alpha: 0.05),
      themeColor: context.colorScheme.onPrimaryContainer,
      textStyle: context.textStyle.titleSmall?.copyWith(
        color: context.colorScheme.onPrimaryContainer,
      ),
      hintTextStyle: context.textStyle.titleSmall?.copyWith(
        color: context.colorScheme.onPrimaryContainer,
      ),
      suffix: Icon(
        icon,
        color: context.colorScheme.onPrimaryContainer,
        size: 20,
      ),

      padding: EdgeInsets.zero,
    );
  }
}
