/// @Created by akash on 05-06-2025.
/// Know more about author at https://akash.cloudemy.in

import 'dart:ui';

import '../core/theme/theme_wb_chat.dart';
import '../main_common.dart';
import 'flavor_config.dart';

void main() {
  FlavorConfig(
    flavor: AppFlavor.wbChat,
    appTitle: "WB Chat",
    logoAsset: "assets/wb_chat_logo.png",
    primaryColor: const Color(0xff071952),
    theme: (textTheme) => MaterialTheme(textTheme)
  );
  mainCommon();
}
