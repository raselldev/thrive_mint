import 'package:flutter/material.dart';
import 'package:thrive_mint/res/color/custom_color.dart';
import 'package:thrive_mint/res/typography/custom_typography.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.textInputAction,
    required this.labelText,
    required this.keyboardType,
    required this.controller,
    super.key,
    this.onChanged,
    this.validator,
    this.obscureText,
    this.suffixIcon,
    this.onEditingComplete,
    this.autofocus,
    this.focusNode,
  });

  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final TextInputAction textInputAction;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final bool? obscureText;
  final Widget? suffixIcon;
  final String labelText;
  final bool? autofocus;
  final FocusNode? focusNode;
  final void Function()? onEditingComplete;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        textInputAction: textInputAction,
        focusNode: focusNode,
        onChanged: onChanged,
        autofocus: autofocus ?? false,
        validator: validator,
        obscureText: obscureText ?? false,
        obscuringCharacter: '*',
        onEditingComplete: onEditingComplete,
        decoration: InputDecoration(
          suffixIcon: GestureDetector(
            child: suffixIcon,
            onTap: () => obscureText,
          ),
          labelText: labelText,
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          suffixIconColor: CustomColor.whiteColor,
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 2,
              color: CustomColor.whiteColor,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 2,
              color: CustomColor.whiteColor,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 2,
              color: CustomColor.whiteColor,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          labelStyle: CustomTypography.bodySmall.copyWith(
            color: CustomColor.whiteColor,
          ),
        ),
        onTapOutside: (event) => FocusScope.of(context).unfocus(),
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          color: CustomColor.whiteColor,
        ),
        cursorColor: CustomColor.whiteColor,
      ),
    );
  }
}
