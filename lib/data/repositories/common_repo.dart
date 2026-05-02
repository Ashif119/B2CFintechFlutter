import 'package:alert_hub/core/managers/network_manager.dart';
import 'package:alert_hub/core/network/api_client.dart';
import 'package:alert_hub/core/network/ui_state.dart';
import 'package:alert_hub/data/models/get_country_list.dart';
import 'package:alert_hub/modules/dashboard/data/model/profile_data.dart';

/// @Created by akash on 26-09-2025.
/// Know more about author at https://akash.cloudemy.in

class CommonRepo {
  void getCountryCode(void Function(UiState<String> state) callback) async {
    callback.call(const UiState.loading());
    if (!await isNetworkAvailable()) {
      callback.call(const UiState.error('No internet connection'));
      return;
    }
    final country = await ApiClient.to.getCountry();
    if (country != null) {
      callback.call(UiState.success(country));
    } else {
      callback.call(const UiState.error('Failed to get country'));
    }
  }

  //════════════GetProfile═════════════
  Future<void> getProfile(
    dynamic id,
    void Function(UiState<ProfileData> state) callback,
  ) async {
    callback.call(const UiState.loading());
    if (!await isNetworkAvailable()) {
      callback.call(const UiState.error('No internet connection'));
      return;
    }
    var res = await ApiClient.to.getUserProfile(id);
    if (res.success == true && res.data != null) {
      callback.call(UiState.success(res.data!));
    } else {
      callback.call(UiState.error(res.message ?? 'Error occurred'));
    }
  }

  //════════════CountryList═════════════
  Future<void> getCountryList(
    void Function(UiState<List<GetCountryList>> state) callback,
  ) async {
    callback.call(const UiState.loading());
    if (!await isNetworkAvailable()) {
      callback.call(const UiState.error('No internet connection'));
      return;
    }
    var res = await ApiClient.to.getCountryList();
    if (res.success == true && res.data != null) {
      callback.call(UiState.success(res.data!));
    } else {
      callback.call(UiState.error(res.message ?? 'Error occurred'));
    }
  }
  /*
  Future<void> getProfile(
      void Function(UiState<UserDetailsData> state) callback,
      ) async {
    callback.call(const UiState.loading());
    if (!await isNetworkAvailable()) {
      callback.call(const UiState.error('No internet connection'));
      return;
    }
    var res = await ApiClient.to.userProfileDetailForAndriod();
    if (res.statusCode == 1 ) {
      callback.call(UiState.success(res.data!));
    } else {
      callback.call(UiState.error(res.responseText ?? 'No data found!'));
    }

  }

*/
}
