import 'package:get/route_manager.dart';

import '/modules/splash/splash.dart';
import '/modules/auth/auth.dart';

class Routes {
  static const splashScreen = "/splash";
  static const loginScreen = "/login";
  static const signupScreen = "/sign_up";
}

final getPages = [
  GetPage(name: Routes.splashScreen, page: () => const Splash()),
  GetPage(name: Routes.loginScreen, page: () => const Login()),
  GetPage(name: Routes.signupScreen, page: () => const SignUp())
];