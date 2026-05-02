/// @Created by akash on 05-06-2025.
/// Know more about author at https://akash.cloudemy.in

import 'dart:ui';

import '../core/theme/theme_team_inbox.dart';
import '../main_common.dart';
import 'flavor_config.dart';


void main() {
  FlavorConfig(
      flavor: AppFlavor.teamInbox,
      appTitle: "Team Inbox",
      logoAsset: "assets/team_inbox_logo.png",
      primaryColor: const Color(0xff3D0301),
      domain: "teaminbox.xyz",
      theme: (textTheme) => MaterialTheme(textTheme)
  );
  mainCommon();
}
