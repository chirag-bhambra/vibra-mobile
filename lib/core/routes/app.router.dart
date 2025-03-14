import 'package:get/route_manager.dart';

import '/ui/splash/splash.dart';

class Routes {
  static const splashScreen = "/splash";
}

final getPages = [
  GetPage(name: Routes.splashScreen, page: () => const Splash())
];