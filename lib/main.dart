import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}
// project cycle //
// splash we use it to check internet connection , location and notification permessions
// onboarding (optional)
// welcome (optional)
// auth ( sign in, sign up, forget password, otp screen)
// for language you need to set cycle
// other pages ( home, cart, search, profile, dashboard)