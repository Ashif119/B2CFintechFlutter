import 'package:alert_hub/core/utils/extensions.dart';
import 'package:alert_hub/core/utils/spacing.dart';
import 'package:alert_hub/core/widgets/custom_app_bar.dart';
import 'package:alert_hub/core/widgets/glass_icon_box.dart';
import 'package:alert_hub/core/widgets/rounded_button.dart';
import 'package:alert_hub/core/widgets/text_field_with_label.dart';
import 'package:alert_hub/modules/update_profile/update_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpdateProfileScreen extends GetView<UpdateProfileController> {
  const UpdateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return Scaffold(
      backgroundColor: scheme.primary,
      appBar: CustomAppBar(
        centerOfTitle: true,
        middle: Text(
          "Edit Profile",
          style: context.textStyle.titleLarge?.copyWith(
            color: context.colorScheme.onPrimaryContainer,
            fontWeight: FontWeight.w600,
            letterSpacing: -0.3,
          ),
          textScaler: const TextScaler.linear(1.2),
        ),
        leading: GestureDetector(
          onTap: () => Get.back(),
          child: Center(
            child: GlassIconBox(
              height: 40,
              width: 40,
              child: Icon(
                Icons.arrow_back_sharp,
                color: context.colorScheme.onPrimaryContainer.withValues(
                  alpha: 0.8,
                ),
                size: 18,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile Header
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: context.colorScheme.onPrimaryContainer.withValues(
                  alpha: 0.05,
                ),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: context.colorScheme.onPrimaryContainer.withValues(
                    alpha: 0.08,
                  ),
                  width: 0.8,
                ),
              ),
              child: Column(
                children: [
                  // Profile Avatar
                  Obx(() {
                    final imgFile = controller.pickedImage.value;
                    final imgUrl = controller.profileData.value?.profileImgUrl;

                    return GestureDetector(
                      onTap: controller.pickImage,
                      child: Stack(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: [
                                  scheme.primaryContainer.withValues(
                                    alpha: 0.5,
                                  ),
                                  scheme.primaryContainer.withValues(
                                    alpha: 0.2,
                                  ),
                                ],
                              ),
                              border: Border.all(
                                color: scheme.onPrimaryContainer.withValues(
                                  alpha: 0.4,
                                ),
                                width: 1.5,
                              ),
                            ),
                            child: ClipOval(
                              child:
                              // imgFile != null
                              //     ? Image.file(
                              //         imgFile,
                              //         fit: BoxFit.cover,
                              //         width: 80,
                              //         height: 80,
                              //       )
                              //     : (imgUrl != null && imgUrl.isNotEmpty)
                              //     ? Image.network(
                              //         imgUrl,
                              //         fit: BoxFit.cover,
                              //         width: 80,
                              //         height: 80,
                              //         errorBuilder: (_, _, _) => Center(
                              //           child: Text(
                              //             controller
                              //                     .nameController
                              //                     .text
                              //                     .isNotEmpty
                              //                 ? controller
                              //                       .nameController
                              //                       .text[0]
                              //                       .toUpperCase()
                              //                 : '?',
                              //             style: context
                              //                 .textStyle
                              //                 .headlineMedium
                              //                 ?.copyWith(
                              //                   color:
                              //                       scheme.onPrimaryContainer,
                              //                   fontWeight: FontWeight.w700,
                              //                 ),
                              //           ),
                              //         ),
                              //       )
                              //     :
                              Center(
                                      child: Text(
                                        controller
                                                .nameController
                                                .text
                                                .isNotEmpty
                                            ? controller.nameController.text[0]
                                                  .toUpperCase()
                                            : '',
                                        style: context.textStyle.headlineMedium
                                            ?.copyWith(
                                              color: scheme.onPrimaryContainer,
                                              fontWeight: FontWeight.w700,
                                            ),
                                      ),
                                    ),
                            ),
                          ),
                          // Positioned(
                          //   bottom: 0,
                          //   right: 0,
                          //   child: Container(
                          //     width: 24,
                          //     height: 24,
                          //     decoration: BoxDecoration(
                          //       color: scheme.onPrimaryContainer,
                          //       shape: BoxShape.circle,
                          //       border: Border.all(
                          //         color: scheme.primary,
                          //         width: 1.5,
                          //       ),
                          //     ),
                          //     child: Icon(
                          //       Icons.camera_alt_rounded,
                          //       size: 13,
                          //       color: scheme.primary,
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    );
                  }),
                  Spacing.h12,
                  Obx(
                    () => Text(
                      controller.profileData.value?.name ?? '',
                      style: context.textStyle.titleMedium?.copyWith(
                        color: scheme.onPrimaryContainer,
                        fontWeight: FontWeight.w600,
                      ),
                      textScaler: const TextScaler.linear(0.9),
                    ),
                  ),
                  Spacing.h4,
                  Obx(
                    () => Text(
                      controller.profileData.value?.email ?? '',
                      style: context.textStyle.labelMedium?.copyWith(
                        color: scheme.onPrimaryContainer.withValues(alpha: 0.4),
                      ),
                      textScaler: const TextScaler.linear(0.9),
                    ),
                  ),
                  Spacing.h4,
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: scheme.primaryContainer.withValues(alpha: 0.15),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: scheme.onPrimaryContainer.withValues(alpha: 0.3),
                        width: 0.8,
                      ),
                    ),
                    child: Text(
                      "Customer",
                      style: context.textStyle.labelSmall?.copyWith(
                        color: scheme.onPrimaryContainer,
                        fontWeight: FontWeight.w600,
                      ),
                      textScaler: TextScaler.linear(0.9),
                    ),
                  ),
                ],
              ),
            ),

            // Edit Profile Form
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Section Title
                  Row(
                    children: [
                      Container(
                        width: 4,
                        height: 18,
                        decoration: BoxDecoration(
                          color: scheme.onPrimaryContainer,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      Spacing.w8,
                      Text(
                        "Edit Profile",
                        style: context.textStyle.titleMedium?.copyWith(
                          color: scheme.onPrimaryContainer.withValues(
                            alpha: 0.9,
                          ),
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.5,
                        ),
                        textScaler: TextScaler.linear(0.9),
                      ),
                    ],
                  ),

                  Spacing.h16,

                  // Form Fields
                  FormField(
                    label: "Name",
                    hint: "Enter your name",
                    controller: controller.nameController,
                    icon: Icons.person_outline_rounded,
                    iconColor: const Color(0xFF4FC3F7),
                  ),

                  Spacing.h16,

                  FormField(
                    label: "User Name",
                    hint: "Enter your username",
                    controller: controller.usernameController,
                    icon: Icons.email_outlined,
                    iconColor: const Color(0xFF81C784),
                  ),

                  Spacing.h16,

                  FormField(
                    label: "Mobile Number",
                    hint: "Enter mobile number",
                    controller: controller.mobileController,
                    icon: Icons.phone_android_outlined,
                    iconColor: const Color(0xFFF0A500),
                    keyboardType: TextInputType.phone,
                  ),

                  Spacing.h16,

                  FormField(
                    label: "WhatsApp Number",
                    hint: "Enter WhatsApp number",
                    controller: controller.whatsappController,
                    icon: Icons.chat_outlined,
                    iconColor: const Color(0xFF25D366),
                    keyboardType: TextInputType.phone,
                  ),

                  Spacing.h16,

                  FormField(
                    label: "Telegram",
                    hint: "Enter Telegram username",
                    controller: controller.telegramController,
                    icon: Icons.telegram,
                    iconColor: const Color(0xFF26A5E4),
                  ),

                  Spacing.h16,

                  FormField(
                    label: "City",
                    hint: "Enter your city",
                    controller: controller.cityController,
                    icon: Icons.location_city_outlined,
                    iconColor: const Color(0xFFBA68C8),
                  ),

                  Spacing.h16,

                  FormField(
                    label: "State",
                    hint: "Enter your state",
                    controller: controller.stateController,
                    icon: Icons.map_outlined,
                    iconColor: const Color(0xFF4FC3F7),
                  ),

                  Spacing.h32,

                  // Update Button
                  UpdateButton(scheme: scheme),

                  Spacing.h32,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Custom Form Field Widget
class FormField extends StatelessWidget {
  final String label;
  final String hint;
  final TextEditingController controller;
  final IconData icon;
  final Color iconColor;
  final TextInputType keyboardType;

  const FormField({
    super.key,
    required this.label,
    required this.hint,
    required this.controller,
    required this.icon,
    required this.iconColor,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: context.textStyle.labelMedium?.copyWith(
            color: context.colorScheme.onPrimaryContainer.withValues(
              alpha: 0.7,
            ),
            fontWeight: FontWeight.w500,
          ),
          textScaler: TextScaler.linear(0.9),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.04),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Colors.white.withValues(alpha: 0.1),
              width: 0.8,
            ),
          ),
          child: TextFieldWithLabel(
            controller: controller,
            hint: hint,
            textInputType: keyboardType,
            inputAction: TextInputAction.done,
            borderRadius: 12,
            filled: true,
            fillColor: Colors.white.withValues(alpha: 0.05),
            themeColor: context.colorScheme.onPrimaryContainer,
            textStyle: context.textStyle.labelSmall?.copyWith(
              color: context.colorScheme.onPrimaryContainer,
            ),
            hintTextStyle: context.textStyle.labelSmall?.copyWith(
              color: context.colorScheme.onPrimaryContainer.withValues(
                alpha: 0.6,
              ),
            ),
            prefix: Icon(
              icon,
              color: iconColor.withValues(alpha: 0.7),
              size: 20,
            ),
            padding: EdgeInsets.zero,
          ),
        ),
      ],
    );
  }
}

// Update Button
class UpdateButton extends GetView<UpdateProfileController> {
  final ColorScheme scheme;
  const UpdateButton({super.key, required this.scheme});

  @override
  Widget build(BuildContext context) {
    return RoundedButton(
      text: "Update",
      isLoading: controller.isLoading.value,
      width: double.infinity,
      radius: 14,
      backgroundColor: scheme.primaryContainer,
      foregroundColor: scheme.onPrimaryContainer,
      onPressed: () {
        controller.updateUserDetails();
      },
    );
  }
}
