import 'package:get/get.dart';
import 'package:thrive_mint/features/login/screens/login_screen.dart';

class LandingController extends GetxController {
  void getStarted() {
    Get.offAllNamed(LoginScreen.routeName);
  }
}
