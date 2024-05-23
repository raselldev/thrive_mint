import 'package:get/get.dart';
import 'package:thrive_mint/features/home/screens/home_screen.dart';
import 'package:thrive_mint/features/landing/screens/landing_screen.dart';

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: LandingScreen.routeName,
      page: () => const LandingScreen(),
      transition: Transition.cupertino,
    ),
    // HOME
    GetPage(
      name: HomeScreen.routeName,
      page: () => const HomeScreen(),
      transition: Transition.cupertino,
    ),
  ];
}
