/// @Created by akash on 05-06-2025.
/// Know more about author at https://akash.cloudemy.in

import 'dart:ui';

import '../core/theme/theme_alert_hub.dart';
import '../main_common.dart';
import 'flavor_config.dart';


void main() {
  FlavorConfig(
    flavor: AppFlavor.alertHub,
    appTitle: "Alert Hub",
    logoAsset: "assets/alert_hub_logo.png",
    primaryColor: const Color(0xff006666),
    domain: "alerthub.xyz",
    theme: (textTheme) => MaterialTheme(textTheme)
  );
  mainCommon();
}
