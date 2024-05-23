import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:thrive_mint/features/landing/controller/landing_controller.dart';
import 'package:thrive_mint/res/color/custom_color.dart';
import 'package:thrive_mint/res/components/button/general_button.dart';
import 'package:thrive_mint/res/typography/custom_typography.dart';

class LandingScreen extends StatelessWidget {
  static const routeName = '/landing';
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LandingController());
    return Scaffold(
      backgroundColor: CustomColor.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Thrive',
                    style: CustomTypography.displayLarge.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  TextSpan(
                    text: 'Mint',
                    style: CustomTypography.displayLarge.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "Simple tools, thriving finances.",
              style: CustomTypography.bodyLarge.copyWith(
                color: CustomColor.whiteColor,
              ),
            ),
            const Gap(20),
            GeneralButton(
              label: "Get Started",
              onPressed: controller.getStarted,
            ),
          ],
        ),
      ),
    );
  }
}
