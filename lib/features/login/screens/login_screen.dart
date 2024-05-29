import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:thrive_mint/features/login/controller/login_controller.dart';
import 'package:thrive_mint/res/color/custom_color.dart';
import 'package:thrive_mint/res/components/text_field/custom_text_field.dart';
import 'package:thrive_mint/res/typography/custom_typography.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/login';
  final LoginController controller = Get.put(LoginController());

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi, Welcome Back!",
                style: CustomTypography.titleSmall.copyWith(
                  color: CustomColor.whiteColor,
                ),
              ),
              Text(
                "Hello again, you've been missed",
                style: CustomTypography.labelMedium.copyWith(
                  color: CustomColor.whiteColor,
                ),
              ),
              const Gap(50),
              TextField(
                decoration: InputDecoration(
                  labelText: "Username",
                  enabledBorder: const OutlineInputBorder(borderSide: BorderSide(width: 2.5, color: CustomColor.whiteColor,),),
                  focusedBorder: const OutlineInputBorder(borderSide: BorderSide(width: 2.5, color: CustomColor.whiteColor,),),
                  labelStyle: CustomTypography.labelMedium.copyWith(
                    color: CustomColor.whiteColor,
                  ),
                  suffixIcon: Icon(Icons.visibility_outlined),
                  suffixIconColor: CustomColor.whiteColor,
                ),
                onTapOutside: (event) {
                  FocusScope.of(context).unfocus();
                },
              )
              // CustomTextField(
              //   obscureText: false,
              //   controller: controller.emailController,
              //   labelText: "Email",
              //   keyboardType: TextInputType.emailAddress,
              //   textInputAction: TextInputAction.next,
              //   onChanged: (value) {
              //     controller.validateEmail(value);
              //   },
              //   validator: (value) {
              //     controller.validateEmail(value);
              //     return null;
              //   },
              // ),
              // const Gap(20),
              // CustomTextField(
              //   suffixIcon: Icon(Icons.visibility_outlined),
              //   obscureText: true,
              //   controller: controller.passwordController,
              //   labelText: "Password",
              //   keyboardType: TextInputType.emailAddress,
              //   textInputAction: TextInputAction.next,
              //   onChanged: (value) {
              //     controller.validateEmail(value);
              //   },
              //   validator: (value) {
              //     controller.validateEmail(value);
              //     return null;
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
