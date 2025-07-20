import 'package:flutter/material.dart';

import '/constants/constants.dart';

class ProfilePicture extends StatelessWidget {
  final String image;
  const ProfilePicture({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: Gradients.profileFrameGradient,
        boxShadow: [
          BoxShadow(
            color: AppColors.cozyViolet,
            blurRadius: 20,
            spreadRadius: 1
          )
        ]
      ),
      padding: const EdgeInsets.all(3),
      child: CircleAvatar(
        radius: 40,
        backgroundImage: NetworkImage(image),
      ),
    );
  }
}
