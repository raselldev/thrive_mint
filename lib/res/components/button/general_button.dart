import 'package:flutter/material.dart';
import 'package:thrive_mint/res/color/custom_color.dart';
import 'package:thrive_mint/res/typography/custom_typography.dart';

class GeneralButton extends StatelessWidget {
  const GeneralButton(
      {super.key, required this.label, required this.onPressed});
  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: CustomColor.secondaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
      child: Text(
        label,
        style: CustomTypography.labelLarge
            .copyWith(color: CustomColor.primaryColor),
      ),
    );
  }
}
