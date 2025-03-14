import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vibra/constants/strings.dart';
import 'package:vibra/ui/widgets/splash_logo.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

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
            SplashLogo(),
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
