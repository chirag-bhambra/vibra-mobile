import 'package:flutter/material.dart';

import '/constants/constants.dart';
import '/widgets/widgets.dart';

class CustomTextButton extends StatelessWidget {
  final void Function()? onTap;
  final String prefixLabel;
  final String actionLabel;
  const CustomTextButton(
      {super.key, this.onTap, this.prefixLabel = "", this.actionLabel = ""});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          PoppinsText(
            text: prefixLabel,
            style: const TextStyle(
              color: AppColors.primaryLightText,
              fontSize: 12
            ),
          ),
          TextButton(
            onPressed: onTap,
            child: PoppinsText(
              text: actionLabel,
              style: const TextStyle(
                color: AppColors.primaryComponent,
                fontSize: 12
              ),
            ),
          ),
        ],
      ),
    );
  }
}
