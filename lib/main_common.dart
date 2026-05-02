import 'package:alert_hub/route/app_pages.dart';
import 'package:alert_hub/route/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'core/common_controller.dart';
import 'core/managers/storage_manager.dart';
import 'core/network/api_client.dart';
import 'core/theme/base_app_theme.dart';
import 'flavor/flavor_config.dart';

void mainCommon() async {
  await StorageManager.init();
  Get.lazyPut(() => CommonController(), fenix: true);
  Get.lazyPut(() => ApiClient(), fenix: true);
  final isOnboardingDone =
      StorageManager.getBool(StorageManager.onboardingDone) ?? false;
  CommonController.to.isOnboardingDone.value = isOnboardingDone;
  runApp(MyApp(isOnboardingDone: isOnboardingDone));
  CommonController.to.getCountryCode();
}

final RouteObserver<PageRoute<dynamic>> routeObserver =
    RouteObserver<PageRoute<dynamic>>();

class MyApp extends StatelessWidget {
  final bool isOnboardingDone;
  const MyApp({super.key, required this.isOnboardingDone});

  @override
  Widget build(BuildContext context) {
    final config = FlavorConfig.instance;
    final brightness = View.of(context).platformDispatcher.platformBrightness;
    final isLoggedIn = CommonController.to.loadLoginUserData();
    final isDomainVerified =
        StorageManager.getBool(StorageManager.domainVerified) ?? false;
    final isLight = brightness == Brightness.light;

    BaseAppTheme theme = config.theme(
      createTextTheme(context, "ABeeZee", "Agbalumo"),
    );

    final themeData = isLight ? theme.light() : theme.dark();

    return Obx(() {
      final navBarColor = CommonController.to.isOnboardingDone.value
          ? themeData.colorScheme.surfaceContainerLowest
          : themeData.colorScheme.primary;

      return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: isLight ? Brightness.light : Brightness.dark,
          systemNavigationBarColor: themeData.colorScheme.primary,
          // navBarColor,
          systemNavigationBarDividerColor: Colors.transparent,
          systemNavigationBarIconBrightness: isLight
              ? Brightness.light
              : Brightness.dark,
        ),
        child: SafeArea(
          top: false,
          // maintainState: true,
          child: GetMaterialApp(
            title: config.appTitle,
            defaultTransition: Transition.noTransition,
            transitionDuration: Duration.zero,
            theme: themeData,
            debugShowCheckedModeBanner: false,
            getPages: AppPages.pages,
            navigatorObservers: [routeObserver],
            initialRoute: isLoggedIn
                ? AppRoutes.dashboard
                : (isOnboardingDone
                    ? (isDomainVerified
                        ? AppRoutes.login
                        : AppRoutes.startScreen)
                    : AppRoutes.onboarding),
          ),
        ),
      );
    });
  }
}
