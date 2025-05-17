import 'package:flutter/material.dart';

import '/constants/constants.dart';

class CustomInputField extends StatefulWidget {
  final TextEditingController? controller;
  final String? hintText;
  final String? labelText;
  final IconData? prefixIcon;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;

  const CustomInputField({
    super.key,
    this.controller,
    this.hintText,
    this.labelText,
    this.prefixIcon,
    this.validator,
    this.keyboardType,
  });

  @override
  State<CustomInputField> createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
      child: FocusScope(
        child: Builder(
          builder: (context) {
            return TextFormField(
                controller: widget.controller,
                obscureText: widget.hintText == Strings.passwordHint
                    ? obscureText
                    : false,
                validator: widget.validator,
                keyboardType: widget.keyboardType,
                style: const CustomTextStyle(color: AppColors.primaryLightText),
                decoration: InputDecoration(
                  hintText: widget.hintText,
                  labelText: widget.labelText,
                  hintStyle: const CustomTextStyle(
                    color: AppColors.primaryLightText,
                    fontSize: 14,
                  ),
                  prefixIcon: widget.prefixIcon != null
                      ? Icon(widget.prefixIcon)
                      : null,
                  suffixIcon: widget.hintText == Strings.passwordHint
                      ? IconButton(
                          onPressed: () {
                            setState(() {
                              obscureText = !obscureText;
                            });
                          },
                          icon: Icon(
                            color: AppColors.primaryComponent,
                              obscureText ? Icons.visibility_off : Icons.visibility
                          ),
                        )
                      : null,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        const BorderSide(color: AppColors.primaryComponent),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                        color: AppColors.secondaryComponent, width: 1.0),
                  ),
                ));
          },
        ),
      ),
    );
  }
}
