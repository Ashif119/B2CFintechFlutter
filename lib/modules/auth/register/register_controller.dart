import 'package:alert_hub/modules/auth/data/auth_repo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  final AuthRepo repo;
  RegisterController({required this.repo});
  final formKey = GlobalKey<FormState>();

  // Controllers
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final companyNameController = TextEditingController();
  final taxIdController = TextEditingController();
  final mobileController = TextEditingController();
  final countryController = TextEditingController();
  final passwordController = TextEditingController();

  // State
  var isLoading = false.obs;
  var isPolicyAccepted = false.obs;
  var showPolicyError = false.obs;

  /// 🔥 VALIDATORS

  String? nameValidator(String? v) {
    if (v == null || v.trim().isEmpty) return "Full name is required";
    if (v.trim().length < 3) return "Enter valid name";
    return null;
  }

  String? emailValidator(String? v) {
    if (v == null || v.isEmpty) return "Email is required";
    final regex = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");
    if (!regex.hasMatch(v)) return "Enter valid email";
    return null;
  }

  String? mobileValidator(String? v) {
    if (v == null || v.isEmpty) return "Mobile number required";
    if (v.length < 10) return "Enter valid mobile number";
    return null;
  }

  String? passwordValidator(String? v) {
    if (v == null || v.isEmpty) return "Password required";
    if (v.length < 6) return "Minimum 6 characters required";
    return null;
  }

  String? companyValidator(String? v) {
    if (v == null || v.trim().isEmpty) return "Company name required";
    return null;
  }

  String? taxValidator(String? v) {
    if (v == null || v.trim().isEmpty) return "Tax ID required";
    return null;
  }

  String? countryValidator(String? v) {
    if (v == null || v.isEmpty) return "Please select country";
    return null;
  }

  /// 🔥 SIGNUP ACTION
  void signup() async {
    if (!formKey.currentState!.validate()) return;

    if (!isPolicyAccepted.value) {
      showPolicyError.value = true;
      return;
    }

    showPolicyError.value = false;
    isLoading.value = true;

    await Future.delayed(const Duration(seconds: 2)); // fake API

    isLoading.value = false;

    Get.snackbar(
      "Success",
      "Account created successfully",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  @override
  void onClose() {
    usernameController.dispose();
    emailController.dispose();
    companyNameController.dispose();
    taxIdController.dispose();
    mobileController.dispose();
    countryController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
