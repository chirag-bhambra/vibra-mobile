import 'package:get/route_manager.dart';
import 'package:vibra/modules/home/home_screen.dart';
import 'package:vibra/modules/onboarding/onboarding_screen.dart';

import '/modules/splash/splash_screen.dart';
import '/modules/auth/auth.dart';

class Routes {
  static const splashScreen = "/splash";
  static const loginScreen = "/login";
  static const signupScreen = "/sign_up";
  static const onboardingScreen = "/onboarding";
  static const home = "/home";
}

final getPages = [
  GetPage(name: Routes.splashScreen, page: () => const SplashScreen()),
  GetPage(name: Routes.loginScreen, page: () => const LoginScreen()),
  GetPage(name: Routes.signupScreen, page: () => const SignUpScreen()),
  GetPage(name: Routes.home, page: () => const HomeScreen()),
  GetPage(name: Routes.onboardingScreen, page: () => const OnboardingScreen())
];