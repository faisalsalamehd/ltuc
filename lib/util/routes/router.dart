import 'package:get/get.dart';
import 'package:ltuc/util/routes/router_string.dart';
import 'package:ltuc/view/screens/splash/splash_binding.dart';
import 'package:ltuc/view/screens/splash/splash_screen.dart';
import 'package:ltuc/view/screens/welcome/welcome_binding.dart';
import 'package:ltuc/view/screens/welcome/welcome_screen.dart';

List<GetPage<dynamic>>? getPages = [
  GetPage(
    name: RouterString.splash,
    page: () => SplashScreen(),
    binding: SplashBinding(),
  ),
  GetPage(
    name: RouterString.welcome,
    page: () => WelcomeScreen(),
    binding: WelcomeBinding(),
  ),
];
