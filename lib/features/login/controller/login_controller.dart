import 'package:get/get.dart';
import 'package:flutter/material.dart';

class LoginController extends GetxController {
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  late TextEditingController emailController;
  late TextEditingController passwordController;

  var email = ''.obs;
  var password = ''.obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }

  // Method to validate email
  String? validateEmail(String? value) {
    if (!GetUtils.isEmail(value ?? '')) {
      return "Provide a valid Email";
    }
    return null;
  }

  // Method to validate password
  String? validatePassword(String value) {
    if (value.length < 8) {
      return "Password must be at least 6 characters";
    }
    return null;
  }
}
