import 'package:alert_hub/core/common_controller.dart';
import 'package:alert_hub/core/managers/storage_manager.dart';
import 'package:alert_hub/route/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  final PageController pageController = PageController();
  final RxInt currentPage = 0.obs;

  void nextPage() {
    if (currentPage.value < 3) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOutCubic,
      );
    } else {
      StorageManager.saveBool(StorageManager.onboardingDone, true);
      CommonController.to.completeOnboarding();
      Get.offAllNamed(AppRoutes.startScreen);
    }
  }

  void skip() {
    StorageManager.saveBool(StorageManager.onboardingDone, true);
    CommonController.to.completeOnboarding();
    Get.offAllNamed(AppRoutes.startScreen);
  }

  void onPageChanged(int index) => currentPage.value = index;

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
