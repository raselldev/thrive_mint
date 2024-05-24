import 'package:flutter/material.dart';
import 'package:thrive_mint/res/color/custom_color.dart';
import 'package:thrive_mint/res/typography/custom_typography.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final Widget? suffixIcon;
  final FocusNode? focusNode;
  final Function(String)? onChanged;
  final bool? isObscureText;
  final bool? isDense;
  final TextEditingController? controller;
  final Function(String?) validator;

  const CustomTextField({
    super.key,
    required this.hint,
    this.suffixIcon,
    this.isObscureText,
    this.isDense,
    this.controller,
    this.onChanged,
    this.focusNode,
    required this.validator,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      validator: (value) {
        return validator(value);
      },
      onChanged: onChanged,
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: CustomTypography.bodyTiny,
        isDense: isDense ?? true,
        filled: true,
        fillColor: CustomColor.whiteColor,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 17),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: CustomColor.whiteColor,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: CustomColor.whiteColor,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: CustomColor.primaryColor,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: CustomColor.primaryColor,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        suffixIcon: suffixIcon,
      ),
      obscureText: isObscureText ?? false,
      style: CustomTypography.bodyTiny,
    );
  }
}
