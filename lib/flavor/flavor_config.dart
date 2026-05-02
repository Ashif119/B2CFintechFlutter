import 'package:flutter/material.dart';
import '../core/theme/base_app_theme.dart';

/// @Created by akash on 05-06-2025.
/// Know more about author at https://akash.cloudemy.in

enum AppFlavor { teamInbox, alertHub, wbChat }

///# Run
/// flutter run -t lib/flavor/main_team_inbox.dart --flavor teamInbox
/// flutter run -t lib/flavor/main_alert_hub.dart --flavor alertHub
/// flutter run -t lib/flavor/main_wb_chat.dart --flavor wbChat

/// # Build APK
/// flutter build apk -t lib/flavor/main_team_inbox.dart --flavor teamInbox
/// flutter build apk -t lib/flavor/main_alert_hub.dart --flavor alertHub
/// flutter build apk -t lib/flavor/main_wb_chat.dart --flavor wbChat
class FlavorConfig {
  final AppFlavor flavor;
  final String appTitle;
  final String logoAsset;
  final Color primaryColor;
  final String? domain;
  final BaseAppTheme Function(TextTheme) theme;

  static late FlavorConfig _instance;

  factory FlavorConfig({
    required AppFlavor flavor,
    required String appTitle,
    required String logoAsset,
    required Color primaryColor,
    String? domain,
    required BaseAppTheme Function(TextTheme) theme,
  }) {
    _instance = FlavorConfig._internal(
      flavor,
      appTitle,
      logoAsset,
      primaryColor,
      domain,
      theme,
    );
    return _instance;
  }

  FlavorConfig._internal(
    this.flavor,
    this.appTitle,
    this.logoAsset,
    this.primaryColor,
    this.domain,
    this.theme,
  );

  static FlavorConfig get instance => _instance;
}
