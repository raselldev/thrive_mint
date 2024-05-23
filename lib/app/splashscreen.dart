import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thrive_mint/features/landing/screens/landing_screen.dart';
import 'package:thrive_mint/res/color/custom_color.dart';
import 'package:thrive_mint/res/typography/custom_typography.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAllNamed(LandingScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.whiteColor,
      body: Center(
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Thrive',
                style: CustomTypography.displayLarge.copyWith(
                  color: CustomColor.primaryColor,
                  fontWeight: FontWeight.w900,
                ),
              ),
              TextSpan(
                text: 'Mint',
                style: CustomTypography.displayLarge.copyWith(
                  color: CustomColor.primaryColor,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
