import 'dart:io';
import 'package:alert_hub/core/common_controller.dart';
import 'package:alert_hub/core/managers/storage_manager.dart';
import 'package:alert_hub/core/network/ui_state.dart';
import 'package:alert_hub/core/utils/common_methods.dart';
import 'package:alert_hub/core/utils/extensions.dart';
import 'package:alert_hub/modules/dashboard/data/model/profile_data.dart';
import 'package:alert_hub/modules/dashboard/data/repo/dashboard_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class UpdateProfileController extends GetxController {
  var nameController = TextEditingController();
  var usernameController = TextEditingController();
  var mobileController = TextEditingController();
  var whatsappController = TextEditingController();
  var telegramController = TextEditingController();
  var cityController = TextEditingController();
  var stateController = TextEditingController();
  final isLoading = false.obs;
  final repo = DashboardRepo();
  Rx<ProfileData?> profileData = Rx<ProfileData?>(null);
  final pickedImage = Rx<File?>(null);

  @override
  void onReady() {
    CommonController.to.getUserProfile().then((value) {
      profileData.value = CommonController.to.profileData.value.getDataOrNull;
      if (profileData.value != null) {
        nameController.text = profileData.value?.name ?? '';
        usernameController.text = profileData.value?.userName ?? '';
        mobileController.text = profileData.value?.mobileNo ?? '';
        whatsappController.text = profileData.value?.whatsAppNo ?? '';
        telegramController.text = profileData.value?.telegram ?? '';
        cityController.text = profileData.value?.city ?? '';
        stateController.text = profileData.value?.state ?? '';
      }
    });
  }

  Future<void> pickImage() async {
    final picked = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      imageQuality: 70,
    );
    if (picked != null) pickedImage.value = File(picked.path);
  }

  Future<void> updateUserDetails() async {
    final profile = StorageManager.loadCompanyProfile();
    final formData = FormData({
      "Name": nameController.text.trim(),
      "CountryCode": "+91",
      "MobileNo": mobileController.text.trim(),
      "WhatsAppNo": whatsappController.text.trim(),
      "Telegram": telegramController.text.trim(),
      "City": cityController.text.trim(),
      "State": stateController.text.trim(),
      "Role": "2",
      "Email": "",
      "UserName": usernameController.text.trim(),
      if (pickedImage.value != null) "ProfileImgUrl": pickedImage.value!,
      "Id": StorageManager.loginId,
      "WID": StorageManager.wid,
      "LoginId": profile?.loginId ?? 0,
    });
    repo.updateUserProfile(
      formData,
      (state) => state.handleWithErrorBox((data) {
        isLoading.value = state.isLoading;
        showSuccessDialog('Profile updated successfully');
        CommonController.to.getUserProfile(isRefresh: true);
      }),
    );
  }

  @override
  void onClose() {
    nameController.dispose();
    usernameController.dispose();
    mobileController.dispose();
    whatsappController.dispose();
    telegramController.dispose();
    cityController.dispose();
    stateController.dispose();
    super.onClose();
  }
}
