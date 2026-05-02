import 'package:alert_hub/core/managers/storage_manager.dart';
import 'package:alert_hub/core/network/ui_state.dart';
import 'package:alert_hub/core/utils/extensions.dart';
import 'package:alert_hub/modules/auth/data/auth_repo.dart';
import 'package:alert_hub/route/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../data/models/company_profilee.dart';

class SplashController extends GetxController {
  final AuthRepo repo;
  SplashController({required this.repo});

  final domainController = TextEditingController(text: "teaminbox.xyz");

  final isLoading = false.obs;
  var isDomainAdded = false.obs;
  var isDomainVerified = false.obs;
  var errorMsg = ''.obs;
  var companyProfile = Rxn<CompanyProfile>();

  @override
  void onInit() {
    super.onInit();
    final verified =
        StorageManager.getBool(StorageManager.domainVerified) ?? false;
    isDomainVerified.value = verified;
    isDomainAdded.value = verified;
  }

  void checkDomain(String domain) {
    if (domain.trim().isEmpty) {
      errorMsg.value = "Please enter domain";
      return;
    }
    errorMsg.value = '';
    repo.getDomain(domain.trim(), (state) {
      isLoading.value = state.isLoading;
      state.when(
        success: (data) {
          companyProfile.value = data;
          isDomainAdded.value = true;
          StorageManager.saveBool(StorageManager.domainVerified, true);
          isDomainVerified.value = true;
        },
        error: (msg) {
          errorMsg.value = msg;
        },
        loading: () {},
        none: () {},
      );
    });
  }

  void registerScreen() {
    Get.toNamed(AppRoutes.register);
  }

  void login() {
    Get.toNamed(AppRoutes.login);
  }

  @override
  void onClose() {
    domainController.dispose();
    super.onClose();
  }
}
