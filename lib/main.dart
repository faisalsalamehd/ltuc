import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:ltuc/util/routes/router.dart';
import 'package:ltuc/util/translations/app_translations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: getPages,
      locale: Locale('ar'),
      translations: AppTranslations(),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
    );
  }
}
// project cycle //
// splash we use it to check internet connection , location and notification permessions , if user is logged in
// onboarding (optional)
// welcome (optional)
// auth ( sign in, sign up, forget password, otp screen)
// for language you need to set cycle
// other pages ( home, cart, search, profile, dashboard)