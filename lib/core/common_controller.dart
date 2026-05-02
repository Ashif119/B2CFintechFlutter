import 'package:alert_hub/core/network/ui_state.dart';
import 'package:alert_hub/core/utils/common_methods.dart';
import 'package:alert_hub/core/utils/extensions.dart';
import 'package:alert_hub/data/models/get_country_list.dart';
import 'package:alert_hub/modules/dashboard/data/model/profile_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../data/models/user_data.dart';
import '../data/repositories/common_repo.dart';
import 'managers/storage_manager.dart';

class CommonController extends GetxController {
  static CommonController get to => Get.find();
  final repo = CommonRepo();
  final userData = Rx<UserData?>(null);
  String? countryCode;
  var profileData = UiState<ProfileData>.none().obs;
  final isLoading = false.obs;
  var errorMsg = ''.obs;
  var countryList = <GetCountryList>[].obs;
  var selectedCountry = Rxn<GetCountryList>();
  final countryController = TextEditingController();
  void getCountryCode() {
    repo.getCountryCode((state) {
      isLoading.value = state.isLoading;
      state.when(
        success: (data) {
          countryCode = data;
        },
        error: (msg) {
          errorMsg.value = msg;
        },
        loading: () {},
        none: () {},
      );
    });
  }

  void getCountryList() {
    repo.getCountryList((state) {
      state.when(
        success: (data) => countryList.value = data,
        error: (msg) {},
        loading: () {},
        none: () {},
      );
    });
  }

  void openCountrySheet() {
    if (countryList.isEmpty) getCountryList();
    final searchController = TextEditingController();
    final filtered = <GetCountryList>[].obs;
    filtered.value = List.from(countryList);

    ever(countryList, (list) => filtered.value = List.from(list));

    openBottomSheet(
      title: "Select Country",
      isScrollControlled: true,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: TextField(
              controller: searchController,
              style: const TextStyle(color: Colors.white),
              onChanged: (query) {
                filtered.value = query.isEmpty
                    ? List.from(countryList)
                    : countryList
                          .where(
                            (c) =>
                                (c.country ?? '').toLowerCase().contains(
                                  query.toLowerCase(),
                                ) ||
                                (c.phonePrefix ?? '').contains(query),
                          )
                          .toList();
              },
              decoration: InputDecoration(
                hintText: 'Search country...',
                hintStyle: TextStyle(
                  color: Colors.white.withValues(alpha: 0.4),
                ),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.white.withValues(alpha: 0.5),
                ),
                filled: true,
                fillColor: Colors.white.withValues(alpha: 0.05),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Flexible(
            child: Obx(
              () => ListView.builder(
                shrinkWrap: true,
                itemCount: filtered.length,
                itemBuilder: (context, index) {
                  final country = filtered[index];
                  return ListTile(
                    title: Text(
                      "${country.country ?? ''} ${country.phonePrefix ?? ''}",
                      style: context.textStyle.bodyMedium?.copyWith(
                        color: context.colorScheme.onPrimaryContainer,
                      ),
                    ),
                    trailing: Text(
                      country.phonePrefix ?? '',
                      style: context.textStyle.bodyMedium?.copyWith(
                        color: context.colorScheme.onPrimaryContainer,
                      ),
                    ),
                    onTap: () {
                      selectedCountry.value = country;
                      countryController.text =
                          "${country.country ?? ''} (${country.phonePrefix ?? ''})";
                      Get.back();
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  void clearData({required bool showLogin}) {
    userData.value = null;
    profileData.value = const UiState.none();
    StorageManager.removeUserData();
  }

  Future<void> setUserData(UserData data) async {
    userData.value = data;
    return StorageManager.saveUserData(data);
  }

  /// Returns true if User is already logged in
  bool loadLoginUserData() {
    userData.value = StorageManager.loadLoginUserData();
    return userData.value != null;
  }

  final RxBool isOnboardingDone = false.obs;

  void completeOnboarding() {
    StorageManager.saveBool(StorageManager.onboardingDone, true);
    isOnboardingDone.value = true;
  }

  Future<void> getUserProfile({bool isRefresh = false}) async {
    if (isRefresh || profileData.value.isError || profileData.value.isNone) {
      await repo.getProfile(StorageManager.loginId, (state) {
        profileData.value = state;
      });
    }
  }

  //  Future<void> getProfile({bool isRefresh = false}) async {
  //     if (isRefresh || profileData.value.isError || profileData.value.isNone) {
  //       await repo.getProfile((state) => profileData.value = state);
  //     }
  //   }
}
