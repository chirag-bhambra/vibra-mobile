import 'package:get/route_manager.dart';
import 'package:vibra/modules/home/home_screen.dart';

import '/modules/splash/splash.dart';
import '/modules/auth/auth.dart';

class Routes {
  static const splashScreen = "/splash";
  static const loginScreen = "/login";
  static const signupScreen = "/sign_up";
  static const home = "/home";
}

final getPages = [
  GetPage(name: Routes.splashScreen, page: () => const Splash()),
  GetPage(name: Routes.loginScreen, page: () => const Login()),
  GetPage(name: Routes.signupScreen, page: () => const SignUp()),
  GetPage(name: Routes.home, page: () => const HomeScreen())
];