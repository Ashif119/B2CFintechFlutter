import 'package:alert_hub/core/common_controller.dart';
import 'package:alert_hub/core/managers/storage_manager.dart';
import 'package:alert_hub/core/network/ui_state.dart';
import 'package:alert_hub/core/utils/extensions.dart';
import 'package:alert_hub/modules/auth/data/auth_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../../route/app_routes.dart';

/// @Created by akash on 02-03-2026.
/// Know more about author at https://akash.cloudemy.in

class LoginController extends GetxController {
  final AuthRepo repo;
  LoginController({required this.repo});
  RxBool isPolicyAccepted = false.obs;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final isLoading = false.obs;
  final formKey = GlobalKey<FormState>();
  void login() {
    if (!formKey.currentState!.validate()) return;
    if (!isPolicyAccepted.value) {
      Get.snackbar(
        "Error !",
        "Please accept Terms & Conditions...",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent,
        overlayBlur: 2.5,
      );
      return;
    }
    final email = emailController.text.trim();
    final password = passwordController.text.trim();
    repo.login(
      {
        "WID": 41,
        "UserName": email,
        "Password": password,
        "OTP": "",
        "IP": "",
        "Lat": 0.0,
        "Long": 0.0,
        "DeviceId": "",
        "countryCode": "0",
        "isLoginWithOTP": false,
      },
      (state) {
        isLoading.value = state.isLoading;
        state.when(
          success: (data) async {
            TextInput.finishAutofillContext();
            await CommonController.to.setUserData(data);
            StorageManager.saveLoginIds(
              id: data.id ?? 0,
              wid: data.wid ?? 0,
            );
            CommonController.to.getUserProfile();
            Get.offAllNamed(AppRoutes.dashboard);
          },
          error: (msg) {},
          loading: () {},
          none: () {},
        );
      },
    );
    // Get.offNamed(AppRoutes.dashboard);
  }
}
