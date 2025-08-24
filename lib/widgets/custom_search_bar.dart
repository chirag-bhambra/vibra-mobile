import 'package:flutter/material.dart';

import '/constants/constants.dart';
import './widgets.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomInputField(
      prefixIcon: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Image.asset(
          Images.search,
          scale: 12,
          color: AppColors.primaryComponent,
        ),
      ),
      hintText: Strings.search,
    );
  }
}
