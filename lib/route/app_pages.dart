import 'package:alert_hub/modules/auth/register/register_controller.dart';
import 'package:alert_hub/modules/auth/register/register_screen.dart';
import 'package:alert_hub/modules/dashboard/bottom_nav/main_shell.dart';
import 'package:alert_hub/modules/dashboard/dashboard_controller.dart';
import 'package:alert_hub/modules/dashboard/data/repo/dashboard_repo.dart';
import 'package:alert_hub/modules/start_screen/start_screen_controller.dart';
import 'package:alert_hub/modules/start_screen/ui/start_screen.dart';
import 'package:alert_hub/modules/update_profile/update_profile.dart';
import 'package:alert_hub/modules/update_profile/update_profile_controller.dart';
import 'package:get/get.dart';
import '../modules/auth/data/auth_repo.dart';
import '../modules/auth/login/login_controller.dart';
import '../modules/auth/login/login_screen.dart';
import '../modules/onboarding/onboarding_screen.dart';
import 'app_routes.dart';

/// @Created by akash on 08-12-2025.
/// Know more about author at https://akash.cloudemy.in

class AppPages {
  AppPages._();

  static final List<GetPage> pages = [
    GetPage(name: AppRoutes.onboarding, page: () => OnboardingScreen()),
    GetPage(
      name: AppRoutes.startScreen,
      page: () => StartScreen(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => AuthRepo());
        Get.lazyPut(() => SplashController(repo: Get.find()));
      }),
    ),
    GetPage(
      name: AppRoutes.register,
      page: () => RegisterScreen(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => AuthRepo());
        Get.lazyPut(() => RegisterController(repo: Get.find()));
      }),
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => LoginScreen(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => AuthRepo());
        Get.lazyPut(() => LoginController(repo: Get.find()));
      }),
    ),
    GetPage(
      name: AppRoutes.dashboard,
      page: () => MainShell(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => DashboardRepo());
        Get.lazyPut(() => DashboardController(repo: Get.find()));
      }),
    ),
    GetPage(
      name: AppRoutes.updateProfile,
      page: () => UpdateProfileScreen(),
      binding: BindingsBuilder(() {
        Get.lazyPut(() => UpdateProfileController());
      }),
    ),
  ];
}
