import 'package:get/get.dart';
import 'package:thrive_mint/features/home/screens/home_screen.dart';

class LandingController extends GetxController {
  void getStarted() {
    Get.offAllNamed(HomeScreen.routeName);
  }
}
