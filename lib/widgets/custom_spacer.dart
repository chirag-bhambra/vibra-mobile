import 'package:flutter/material.dart';

class CustomSpacer extends StatelessWidget {
  final double height, width;
  const CustomSpacer({
    super.key,
    this.height = 20,
    this.width = 10,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
