import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

import '/constants/constants.dart';
import '/core/routes/app.router.dart';
import '/widgets/splash_logo.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void bootstrap() async {
    await Future.delayed(const Duration(seconds: 4));
    Get.offNamed(Routes.loginScreen);
  }

  @override
  void initState() {
    bootstrap();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
              tag: HeroTags.splashLogo,
              child: SplashLogo(),
            ),
            const SizedBox(height: 40),
            Text(
              Strings.appTitle.toUpperCase(),
              style: GoogleFonts.poppins(
                color: Colors.white.withOpacity(0.8),
                fontSize: 28,
                letterSpacing: 13,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              Strings.appSlogan,
              textAlign: TextAlign.center,
              style: GoogleFonts.quicksand(
                color: Colors.white.withOpacity(0.7),
                fontSize: 16,
                fontWeight: FontWeight.w500,
                letterSpacing: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
