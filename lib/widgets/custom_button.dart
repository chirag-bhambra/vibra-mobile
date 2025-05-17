import 'package:flutter/material.dart';

import '/widgets/widgets.dart';
import '/constants/gradients.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.label, this.onTap, this.isLoading = false});
  final String label;
  final bool isLoading;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GestureDetector(
        onTap: isLoading ? null : onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          width: isLoading ? 60 : MediaQuery.of(context).size.width,
          height: 60,
          padding: EdgeInsets.all(isLoading ? 10 : 0),
          decoration: BoxDecoration(
            gradient: Gradients.buttonGradient,
            borderRadius: isLoading
                ? BorderRadius.circular(30)
                : BorderRadius.circular(10),
          ),
          child: Center(
            child: isLoading
                ? const CircularProgressIndicator(color: Colors.black)
                : PoppinsText(
                    text: label,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w500),
                  ),
          ),
        ),
      ),
    );
  }
}
