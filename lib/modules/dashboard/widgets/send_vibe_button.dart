import 'package:flutter/material.dart';

import '/constants/constants.dart';
import '/utils/utils.dart';
import '/widgets/widgets.dart';

class SendVibeButton extends StatelessWidget {
  final void Function() onTap;
  const SendVibeButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.transparent,
      child: Container(
        height: Dimensions.getHeight(context) * 0.25,
        width: Dimensions.getHeight(context) * 0.25,
        decoration: BoxDecoration(
          gradient: Gradients.sendVibeGradient,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: AppColors.primaryComponent.withOpacity(0.6),
              spreadRadius: 8,
              blurRadius: 100,
            ),
          ],
        ),
        alignment: Alignment.center,
        child: const PoppinsText(
          text: Strings.sendVibeToday,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.primaryDarkText,
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
