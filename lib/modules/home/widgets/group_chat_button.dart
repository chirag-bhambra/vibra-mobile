import 'package:flutter/material.dart';
import 'package:vibra/constants/images.dart';

import '/constants/constants.dart';

class GroupChatButton extends StatelessWidget {
  const GroupChatButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.primaryComponent,
            width: 2,
          ),
          shape: BoxShape.circle,
        ),
        child: CircleAvatar(
          backgroundColor: AppColors.primaryComponent,
          radius: 30,
          child: Image.asset(
            Images.suggestions,
            color: AppColors.primaryBackground,
            width: 40,
          ),
        ),
      ),
    );
  }
}
