import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:vibra/utils/utils.dart';

import '/constants/constants.dart';
import '/widgets/widgets.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isKeyboardVisible = KeyboardVisibilityProvider.isKeyboardVisible(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: Dimensions.getHeight(context) * 0.05),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedOpacity(
                  duration: const Duration(milliseconds: 300),
                  opacity: isKeyboardVisible ? 0.0 : 1.0,
                  curve: Curves.easeInOut,
                  child: AnimatedSize(
                    duration: const Duration(milliseconds: 300),
                    child: !isKeyboardVisible ? Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Hero(
                        tag: HeroTags.splashLogo,
                        child: SplashLogo(),
                      ),
                    ) : const SizedBox.shrink(),
                  ),
                ),
                const CustomInputField(
                  hintText: Strings.firstNameHint,
                  keyboardType: TextInputType.name,
                ),
                const CustomInputField(
                  hintText: Strings.lastNameHint,
                  keyboardType: TextInputType.name,
                ),
                const CustomInputField(
                  hintText: Strings.emailHint,
                  keyboardType: TextInputType.emailAddress,
                ),
                const CustomInputField(
                  hintText: Strings.phoneHint,
                  keyboardType: TextInputType.phone,
                ),
                const CustomInputField(
                  hintText: Strings.passwordHint,
                ),
                CustomTextButton(
                    onTap: () => Get.back(),
                    prefixLabel: Strings.dontHaveAccount,
                    actionLabel: Strings.signup
                ),
                Hero(
                  tag: HeroTags.authButton,
                  child: CustomButton(
                    onTap: () {
                      //TODO: Handle signup logic here
                    },
                    label: Strings.signup,
                    isLoading: false,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
