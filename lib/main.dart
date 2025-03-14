import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vibra/constants/colors.dart';

import '/core/routes/app.router.dart';

void main() {
  runApp(const Vibra());
}

class Vibra extends StatelessWidget {
  const Vibra({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.primaryBackground,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splashScreen,
      getPages: getPages
    );
  }
}
