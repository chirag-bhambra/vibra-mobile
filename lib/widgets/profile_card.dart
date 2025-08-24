import 'package:flutter/material.dart';

import '/constants/constants.dart';
import '/utils/utils.dart';
import '/widgets/widgets.dart';

class ProfileCard extends StatelessWidget {
  final String image;
  final String username;
  const ProfileCard({super.key, required this.image, required this.username});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimensions.getWidth(context) * 0.42,
      decoration: BoxDecoration(
        gradient: Gradients.profileCardGradient,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ProfilePicture(image: image),
          const CustomSpacer(),
          PoppinsText(
            text: username,
            style: const TextStyle(
              color: AppColors.primaryLightText,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          const CustomSpacer(),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.graphic_eq, size: 20, color: AppColors.primaryComponent),
              Icon(Icons.male, size: 20, color: AppColors.primaryComponent),
              Icon(Icons.energy_savings_leaf_rounded, size: 20, color: AppColors.primaryComponent),
            ],
          ),
        ],
      ),
    );
  }
}
