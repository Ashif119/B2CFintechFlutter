import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../data/models/company_profilee.dart';
import '../../data/models/user_data.dart';

class StorageManager {
  StorageManager._();

  static GetStorage get storage => Get.find();

  static Future<void> init() async {
    await GetStorage.init();
    Get.lazyPut(() => GetStorage());
  }

  static void saveString(String key, String value) {
    storage.write(key, value);
  }

  static String? getString(String key) {
    return storage.read(key);
  }

  static void saveBool(String key, bool value) {
    storage.write(key, value);
  }

  static bool? getBool(String key) {
    return storage.read(key);
  }

  static Future<void> saveUserData(UserData data) async {
    return storage.write('userData', data.toJson());
  }

  static void removeUserData() {
    storage.remove('userData');
  }

  static UserData? loadLoginUserData() {
    if (!storage.hasData('userData') || storage.read('userData') == null) {
      return null;
    }
    return UserData.fromJson(storage.read('userData') ?? {});
  }

  static const onboardingDone = 'onboarding_done';
  static const domainVerified = 'domain_verified';
  static const companyProfileKey = 'company_profile';
  static const _userIdKey = 'user_id';
  static const _widKey = 'wid';

  static void saveLoginIds({required int id, required int wid}) {
    storage.write(_userIdKey, id);
    storage.write(_widKey, wid);
  }

  static int get loginId => storage.read(_userIdKey) ?? 0;
  static int get wid => storage.read(_widKey) ?? 0;
  static void saveCompanyProfile(CompanyProfile profile) {
    storage.write(companyProfileKey, profile.toJson());
  }

  static CompanyProfile? loadCompanyProfile() {
    final data = storage.read(companyProfileKey);
    if (data == null) return null;
    return CompanyProfile.fromJson(Map<String, dynamic>.from(data));
  }
}
