import 'package:flutter/material.dart';

import '/constants/colors.dart';

class Gradients {
  static const LinearGradient buttonGradient = LinearGradient(
    colors: [AppColors.primaryComponent, AppColors.secondaryComponent],
  );

  static const LinearGradient sendVibeGradient = LinearGradient(
    colors: [AppColors.primaryComponent, AppColors.darkPrimaryComponent],
  );

  static const LinearGradient profileFrameGradient = LinearGradient(
    colors: [AppColors.cozyViolet, AppColors.purple],
  );
}