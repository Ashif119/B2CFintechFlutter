import 'package:alert_hub/core/common_controller.dart';
import 'package:alert_hub/core/managers/storage_manager.dart';
import 'package:alert_hub/core/network/ui_state.dart';
import 'package:alert_hub/core/utils/common_methods.dart';
import 'package:alert_hub/core/utils/extensions.dart';
import 'package:alert_hub/modules/dashboard/data/model/get_balance.dart';
import 'package:alert_hub/modules/dashboard/data/model/package_subscription_result.dart';
import 'package:alert_hub/modules/dashboard/data/model/sender_for_chat_request.dart';
import 'package:alert_hub/modules/dashboard/data/model/website_app.dart';
import 'package:alert_hub/modules/dashboard/data/model/whatsapp_sender_contact_result.dart';
import 'package:alert_hub/modules/dashboard/data/repo/dashboard_repo.dart';
import 'package:alert_hub/modules/dashboard/home/add_update_sender_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  DashboardController({required this.repo});

  final DashboardRepo repo;

  var balance = 0.0.obs;
  var walletData = Rxn<GetBalance>();
  final isBalanceLoading = false.obs;
  var senderList = <SenderForChatRequest>[].obs;
  var subscriptionPlan = <PackageSubscriptionResult>[].obs;
  var whatsappSenderContact = <WhatsappSenderContactResult>[].obs;
  var websiteApps = <WebsiteApp>[].obs;
  var selectedApp = Rxn<WebsiteApp>();

  final appController = TextEditingController();
  final mobileController = TextEditingController();
  final protocolController = TextEditingController();
  final callBackUrlController = TextEditingController();
  final phoneNumberIdController = TextEditingController();
  final wabaController = TextEditingController();
  final tokenController = TextEditingController();
  final searchCountryController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    getBalanceUser();
    getSenderList();
    getPackageSubscription();
    getWASenderContactDataWithPaging();
  }

  @override
  void onReady() {
    super.onReady();
    CommonController.to.getUserProfile();
  }

  void getBalanceUser() {
    repo.getWalletBalance((state) {
      isBalanceLoading.value = state.isLoading;
      state.when(
        success: (data) {
          walletData.value = data;
          balance.value = data.userbalance?.amount ?? 0.0;
        },
        error: (msg) {
          Get.snackbar(
            "Error",
            msg,
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.redAccent.withValues(alpha: 0.2),
            colorText: Colors.white,
          );
        },
        loading: () {},
        none: () {},
      );
    });
  }

  void getSenderList() {
    repo.getSenderForChatScreen(
      {"senderId": 0, "senderMasterId": 0, "appId": 0},
      (state) {
        state.when(
          success: (data) => senderList.value = data,
          error: (msg) {},
          loading: () {},
          none: () {},
        );
      },
    );
  }

  void getPackageSubscription() {
    final profile = StorageManager.loadCompanyProfile();
    repo.getPackageSubscription(
      {
        "id": StorageManager.loginId,
        "wid": StorageManager.wid,
        "loginId": profile?.loginId ?? 0,
      },
      (state) {
        state.when(
          success: (data) => subscriptionPlan.value = data,
          error: (msg) {},
          loading: () {},
          none: () {},
        );
      },
    );
  }

  void getWASenderContactDataWithPaging() {
    repo.getWASenderContactDataWithPaging(
      {
        "senderId": 0,
        "searchValue": "",
        "searchFilter": "index",
        "senderMasterId": 53,
        "pageSize": 20,
        "oldDate": "",
        "latestDate": "",
      },
      (state) {
        state.when(
          success: (data) => whatsappSenderContact.value = data,
          error: (msg) {},
          loading: () {},
          none: () {},
        );
      },
    );
  }

  void getWebsiteApps() {
    repo.getWebsiteApp((state) {
      state.when(
        success: (data) => websiteApps.value = data,
        error: (msg) {},
        loading: () {},
        none: () {},
      );
    });
  }

  void openWebsiteAppSheet() {
    if (websiteApps.isEmpty) getWebsiteApps();
    openBottomSheet(
      title: "Select App",
      body: Obx(
        () => ListView.builder(
          shrinkWrap: true,
          itemCount: websiteApps.length,
          itemBuilder: (context, index) {
            final app = websiteApps[index];
            return ListTile(
              title: Text(
                app.appName ?? '',
                style: context.textStyle.bodyMedium?.copyWith(
                  color: context.colorScheme.onPrimaryContainer,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                color: context.colorScheme.onPrimaryContainer,
                size: 16,
              ),
              onTap: () {
                selectedApp.value = app;
                appController.text = app.appName ?? '';
                Get.back();
              },
            );
          },
        ),
      ),
    );
  }

  final List<String> proto = ["https", "http"];

  void openProtocolSheet() {
    openBottomSheet(
      title: "Please select protocol",
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: proto.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              proto[index],
              style: context.textStyle.bodyMedium?.copyWith(
                color: context.colorScheme.onPrimaryContainer,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              color: context.colorScheme.onPrimaryContainer,
              size: 16,
            ),
            onTap: () {
              protocolController.text = proto[index];
              Get.back();
            },
          );
        },
      ),
    );
  }

  final isSubmitting = false.obs;

  void submitSender({int senderId = 0, String? countryCode, int? countryId}) {
    final countryIdAdd = CommonController.to.selectedCountry.value?.id ?? 0;
    final countryCodeAdd =
        CommonController.to.selectedCountry.value?.phonePrefix ?? "";
    repo.addUpdateSender(
      {
        "senderId": senderId,
        "countryId": senderId == 0 ? countryIdAdd : countryId ?? 0,
        "countryCode": senderId == 0 ? countryCodeAdd : countryCode ?? '',
        "mobileNo": mobileController.text.trim(),
        "callBackURL": callBackUrlController.text.trim(),
        "protocolId": proto.indexOf(protocolController.text) + 1,
        "appId": selectedApp.value?.appId ?? 0,
        "phoneNoId": phoneNumberIdController.text.trim(),
        "wabaId": wabaController.text.trim(),
        "token": tokenController.text.trim(),
      },
      (state) {
        isSubmitting.value = state.isLoading;
        state.when(
          success: (msg) {
            Get.until((route) => Get.isBottomSheetOpen != true);
            getSenderList();
            showResultPopup(msg);
          },
          error: (msg) => showResultPopup(msg, isSuccess: false),
          loading: () {},
          none: () {},
        );
      },
    );
  }

  void onAddSender() {
    appController.clear();
    mobileController.clear();
    protocolController.clear();
    callBackUrlController.clear();
    phoneNumberIdController.clear();
    wabaController.clear();
    tokenController.clear();
    CommonController.to.countryController.clear();
    CommonController.to.selectedCountry.value = null;
    selectedApp.value = null;
    openBottomSheet(title: "", body: const AddUpdateSenderScreen());
  }

  void onEditSender(SenderForChatRequest sender) {
    mobileController.text = sender.mobileNo ?? '';
    callBackUrlController.text = sender.callBackURL ?? '';
    phoneNumberIdController.text = sender.phoneNoId ?? '';
    wabaController.text = sender.wabaId ?? '';
    tokenController.text = sender.token ?? '';
    CommonController.to.countryController.text =
        "${sender.countryName ?? ''} (${sender.countryCode ?? ''})";
    openBottomSheet(
      title: '',
      body: AddUpdateSenderScreen(sender: sender),
    );
  }

  void onDeleteSender(SenderForChatRequest sender) {
    showConfirmationDialog(
      title: "Delete Sender",
      message: "Remove ${sender.mobileNo}?",
      icon: Icons.delete_rounded,
      onConfirm: () {
        repo.deleteSender(
          sender.id ?? 0,
          (state) => state.handleWithErrorBox((data) {
            getSenderList();
          }),
        );
      },
    );
  }

  @override
  void onClose() {
    appController.dispose();
    mobileController.dispose();
    protocolController.dispose();
    callBackUrlController.dispose();
    phoneNumberIdController.dispose();
    wabaController.dispose();
    tokenController.dispose();
    searchCountryController.dispose();
    super.onClose();
  }

}
