import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';

import '/constants/constants.dart';
import '/core/routes/app.router.dart';

void main() {
  runApp(const Vibra());
}

class Vibra extends StatelessWidget {
  const Vibra({super.key});

  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityProvider(
      child: GetMaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: AppColors.primaryBackground,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.splashScreen,
        getPages: getPages
      ),
    );
  }
}
