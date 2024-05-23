import 'package:flutter/material.dart';
import 'package:thrive_mint/res/color/custom_color.dart';

class WhiteContainer extends StatelessWidget {
  final Widget childItem;
  final double width;
  final double height;

  const WhiteContainer({
    super.key,
    required this.childItem,
    this.width = double.infinity,
    this.height = 200, // default height
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          color: CustomColor.whiteColor,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: childItem,
        ),
      ),
    );
  }
}
