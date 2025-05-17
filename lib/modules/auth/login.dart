import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '/core/core.dart';
import '/widgets/widgets.dart';
import '/constants/constants.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: Hero(
                tag: HeroTags.splashLogo,
                child: SplashLogo(),
              ),
            ),
            const CustomInputField(
              hintText: Strings.emailHint,
              keyboardType: TextInputType.emailAddress,
            ),
            const CustomInputField(
              hintText: Strings.passwordHint,
            ),
            CustomTextButton(
              onTap: () {
                Get.toNamed(Routes.signupScreen);
              },
              prefixLabel: Strings.dontHaveAccount,
              actionLabel: Strings.signup
            ),
            Hero(
              tag: HeroTags.authButton,
              child: CustomButton(
                onTap: () {
                  //TODO: Handle login logic here
                },
                label: Strings.login,
                isLoading: false,
              ),
            )
          ],
        ),
      ),
    );
  }
}
