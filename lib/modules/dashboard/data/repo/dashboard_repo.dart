import 'package:alert_hub/core/network/ui_state.dart';
import 'package:alert_hub/modules/dashboard/data/model/get_balance.dart';
import 'package:alert_hub/modules/dashboard/data/model/package_subscription_result.dart';
import 'package:alert_hub/modules/dashboard/data/model/sender_for_chat_request.dart';
import 'package:alert_hub/modules/dashboard/data/model/website_app.dart';
import 'package:alert_hub/modules/dashboard/data/model/whatsapp_sender_contact_result.dart';
import '../../../../core/managers/network_manager.dart';
import '../../../../core/network/api_client.dart';

/// @Created by akash on 24-12-2025.
/// Know more about author at https://akash.cloudemy.in

class DashboardRepo {
  //════════════Wallet═════════════
  Future<void> getWalletBalance(
    void Function(UiState<GetBalance> state) callback,
  ) async {
    callback.call(const UiState.loading());
    if (!await isNetworkAvailable()) {
      callback.call(const UiState.error('No internet connection'));
      return;
    }
    var res = await ApiClient.to.getBalance();
    if (res.success == true && res.data != null) {
      callback.call(UiState.success(res.data!));
    } else {
      callback.call(UiState.error(res.message ?? 'Error occurred'));
    }
  }

  //════════════SenderChatRequest═════════════
  Future<void> getSenderForChatScreen(
    Object body,
    void Function(UiState<List<SenderForChatRequest>> state) callback,
  ) async {
    callback.call(const UiState.loading());
    if (!await isNetworkAvailable()) {
      callback.call(const UiState.error('No internet connection'));
      return;
    }
    var res = await ApiClient.to.getSenderForChatScreen(body);
    if (res.success == true && res.data != null) {
      callback.call(UiState.success(res.data!));
    } else {
      callback.call(UiState.error(res.message ?? 'Error occurred'));
    }
  }

  //════════════SubscriptionPlan═════════════
  Future<void> getPackageSubscription(
    Object body,
    void Function(UiState<List<PackageSubscriptionResult>> state) callback,
  ) async {
    callback.call(const UiState.loading());
    if (!await isNetworkAvailable()) {
      callback.call(const UiState.error('No internet connection'));
      return;
    }
    var res = await ApiClient.to.getPackageSubscription(body);
    if (res.success == true && res.data != null) {
      callback.call(UiState.success(res.data!));
    } else {
      callback.call(UiState.error(res.message ?? 'Error occurred'));
    }
  }

  //════════════Inbox═════════════
  Future<void> getWASenderContactDataWithPaging(
    Object body,
    void Function(UiState<List<WhatsappSenderContactResult>> state) callback,
  ) async {
    callback.call(const UiState.loading());
    if (!await isNetworkAvailable()) {
      callback.call(const UiState.error('No internet connection'));
      return;
    }
    var res = await ApiClient.to.getWASenderContactDataWithPaging(body);
    if (res.success == true && res.data != null) {
      callback.call(UiState.success(res.data!));
    } else {
      callback.call(UiState.error(res.message ?? 'Error occurred'));
    }
  }

  //════════════WebsiteApp═════════════
  Future<void> getWebsiteApp(
    void Function(UiState<List<WebsiteApp>> state) callback,
  ) async {
    callback.call(const UiState.loading());
    if (!await isNetworkAvailable()) {
      callback.call(const UiState.error('No internet connection'));
      return;
    }
    var res = await ApiClient.to.getWebsiteApp();
    if (res.statusCode == 1) {
      callback.call(UiState.success(<WebsiteApp>[]));
    } else {
      callback.call(UiState.error(res.message ?? 'No data found!'));
    }
  }

  Future<void> updateUserProfile(
    Object data,
    void Function(UiState<String> state) callback,
  ) async {
    callback.call(const UiState.loading());
    if (!await isNetworkAvailable()) {
      callback.call(const UiState.error('No internet connection'));
      return;
    }
    var res = await ApiClient.to.updateUserProfile(data);
    if (res.statusCode == 1) {
      callback.call(UiState.success(res.message ?? "Saved Successfully"));
    } else {
      callback.call(UiState.error(res.message ?? 'No data found!'));
    }
  }

  Future<void> deleteSender(
    int senderId,
    void Function(UiState<String> state) callback,
  ) async {
    callback.call(const UiState.loading());
    if (!await isNetworkAvailable()) {
      callback.call(const UiState.error('No internet connection'));
      return;
    }
    var res = await ApiClient.to.deleteSender(senderId);
    if (res.statusCode == 1) {
      callback.call(UiState.success(res.message ?? "Saved Successfully"));
    } else {
      callback.call(UiState.error(res.message ?? 'No data found!'));
    }
  }

  //════════════AddUpdateSender═════════════
  Future<void> addUpdateSender(
    Object req,
    void Function(UiState<String> state) callback,
  ) async {
    callback.call(const UiState.loading());
    if (!await isNetworkAvailable()) {
      callback.call(const UiState.error('No internet connection'));
      return;
    }
    var res = await ApiClient.to.addUpdateSender(req);
    if (res.statusCode == 1) {
      callback.call(UiState.success(res.message ?? "Saved Successfully"));
    } else {
      callback.call(UiState.error(res.message ?? 'No data found!'));
    }
  }
}
