import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:thrive_mint/res/color/custom_color.dart';
import 'package:thrive_mint/res/components/text_field/custom_text_field.dart';
import 'package:thrive_mint/res/typography/custom_typography.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/login';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    final FocusNode focusNode = FocusNode();
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
              CustomTextField(
                hint: 'Enter your text',
                isObscureText: false,
                isDense: true,
                controller: controller,
                focusNode: focusNode,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                onChanged: (value) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
