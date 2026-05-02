/// @Created by akash on 16-02-2024.
/// Know more about author at https://akash.cloudemy.in

import 'dart:io';
import 'package:alert_hub/data/models/company_profilee.dart';
import 'package:alert_hub/data/models/get_country_list.dart';
import 'package:alert_hub/modules/dashboard/data/model/get_balance.dart';
import 'package:alert_hub/modules/dashboard/data/model/package_subscription_result.dart';
import 'package:alert_hub/modules/dashboard/data/model/profile_data.dart';
import 'package:alert_hub/modules/dashboard/data/model/sender_for_chat_request.dart';
import 'package:alert_hub/modules/dashboard/data/model/website_app.dart';
import 'package:alert_hub/modules/dashboard/data/model/whatsapp_sender_contact_result.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import '../../core/constants/app_constants.dart';
import '../../core/utils/printer.dart';
import '../../data/models/user_data.dart';
import '../common_controller.dart';
import '../utils/common_methods.dart';
import 'api_response_handler.dart';
import 'base_res.dart';

class ApiClient extends GetConnect with Printer {
  static ApiClient get to => Get.find();

  @override
  void onInit() {
    httpClient.baseUrl = BASE_URL;
    httpClient.defaultContentType = "application/json";
    httpClient.timeout = const Duration(seconds: 60);
    httpClient.addRequestModifier<dynamic>((request) {
      request.headers['appVersion'] = '1';
      request.headers['timezone'] = getTimeZoneOffset();
      if (CommonController.to.userData.value?.token != null) {
        request.headers['Authorization'] =
            'Bearer ${CommonController.to.userData.value?.token}';
      }
      if (kDebugMode) printRequest(request);
      return request;
    });
    httpClient.addResponseModifier((request, response) {
      if (response.statusCode == 401) {
        CommonController.to.clearData(showLogin: true);
      }
      if (kDebugMode) printResponse(response, request);
      return response;
    });
    super.onInit();
  }

  Future<String?> getCountry() async {
    try {
      final client = HttpClient();
      final request = await client.getUrl(
        Uri.parse('https://ipinfo.io/country'),
      );
      final response = await request.close();
      if (response.statusCode == 200) {
        return await response
            .transform(const SystemEncoding().decoder)
            .join()
            .then((v) => v.trim());
      }
    } catch (_) {}
    return null;
  }

  Future<BaseDataRes<CompanyProfile>> getDomain(String domain) async {
    final response = await post(
      'Account/GetDomainDetails?domainName=$domain',
      null,
    );
    return ApiResponseHandler.parse<CompanyProfile>(
      response,
      (json) => CompanyProfile.fromJson(json),
    );
  }

  Future<BaseDataRes<UserData>> logIn(Object body) async {
    final response = await post('Account/Login', body);
    return ApiResponseHandler.parse<UserData>(
      response,
      (json) => UserData.fromJson(json),
    );
  }

  Future<BaseDataRes<GetBalance>> getBalance() async {
    final response = await post('User/GetWalletBalance', null);
    if (response.isOk && response.body != null) {
      try {
        return BaseDataRes<GetBalance>(
          statusCode: 1,
          success: true,
          data: GetBalance.fromJson(response.body),
        );
      } catch (e) {
        return BaseDataRes(success: false, message: e.toString());
      }
    }
    return BaseDataRes(
      success: false,
      message: ApiResponseHandler.getErrorMessage(response),
    );
  }

  Future<BaseDataRes<List<GetCountryList>>> getCountryList() async {
    final response = await post('Country/GetCountry', null);
    return ApiResponseHandler.parseList<GetCountryList>(
      response,
      (json) => GetCountryList.fromJson(json),
    );
  }

  Future<BaseDataRes<List<SenderForChatRequest>>> getSenderForChatScreen(
    Object body,
  ) async {
    final response = await post('WhatsAppChat/GetSenderForChatScreeen', body);
    return ApiResponseHandler.parseList<SenderForChatRequest>(
      response,
      (json) => SenderForChatRequest.fromJson(json),
    );
  }

  Future<BaseDataRes<List<PackageSubscriptionResult>>> getPackageSubscription(
    Object body,
  ) async {
    final response = await post('Package/GetPackageSubscription', body);
    return ApiResponseHandler.parseList<PackageSubscriptionResult>(
      response,
      (json) => PackageSubscriptionResult.fromJson(json),
    );
  }

  Future<BaseDataRes<List<WhatsappSenderContactResult>>>
  getWASenderContactDataWithPaging(Object body) async {
    final response = await post(
      'WhatsAppChat/GetWASenderContactDataWithPaging',
      body,
    );
    return ApiResponseHandler.parseList<WhatsappSenderContactResult>(
      response,
      (json) => WhatsappSenderContactResult.fromJson(json),
    );
  }

  Future<BaseDataRes<List<WebsiteApp>>> getWebsiteApp() async {
    final response = await post('Sender/GetWebsiteApp', null);
    return ApiResponseHandler.parseList<WebsiteApp>(
      response,
      (json) => WebsiteApp.fromJson(json),
    );
  }

  Future<BaseDataRes<ProfileData>> getUserProfile(dynamic id) async {
    final response = await post('User/GetUserProfile/$id', null);
    if (response.isOk && response.body != null) {
      try {
        return BaseDataRes<ProfileData>(
          statusCode: 1,
          success: true,
          data: ProfileData.fromJson(response.body),
        );
      } catch (e) {
        return BaseDataRes(success: false, message: e.toString());
      }
    }
    return BaseDataRes(
      success: false,
      message: ApiResponseHandler.getErrorMessage(response),
    );
  }

  Future<BaseDataRes<ProfileData>> updateUserProfile(Object data) async {
    final response = await post(
      'User/UpdateUserProfile',
      data,
      contentType: 'multipart/form-data',
    );
    if (response.isOk && response.body != null) {
      try {
        return BaseDataRes<ProfileData>(
          statusCode: 1,
          success: true,
          data: ProfileData.fromJson(response.body),
        );
      } catch (e) {
        return BaseDataRes(success: false, message: e.toString());
      }
    }
    return BaseDataRes(
      success: false,
      message: ApiResponseHandler.getErrorMessage(response),
    );
  }

  Future<BaseRes> deleteSender(int senderId) async {
    final response = await post('Sender/DeleteSender?SenderId=$senderId', {});
    return ApiResponseHandler.parseBaseRes(response);
  }//✅

  Future<BaseRes> addUpdateSender(Object req) async {
    final response = await post('Sender/AddUpdateSender', req);
    return ApiResponseHandler.parseBaseRes(response);
  }//✅

}
