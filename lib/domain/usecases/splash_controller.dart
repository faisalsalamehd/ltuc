import 'package:flutter/material.dart';
import 'package:ltuc/core/router/routes_string.dart';
import 'package:ltuc/core/translations/locale_provider.dart';
import 'package:ltuc/core/utils/constants/generals.dart';
import 'package:ltuc/core/utils/helpers/connections_network.dart';
import 'package:provider/provider.dart';

class SplashController {
  static bool checkUserLoggedIn() {
    // Logic to check if the user is logged in
    // This could involve checking a token, user preferences, etc.
    return false; // Placeholder return value
  }

  static Future<void> getLanguage(BuildContext context) async {
    // Logic to get the user's preferred language
    // This could involve checking user preferences or system settings
    currentLocale = Localizations.localeOf(context);
    languageCode = currentLocale.languageCode;
    localeProvider = Provider.of<LocaleProvider>(context);
    tr = localeProvider.translate;
    screenHeight = MediaQuery.sizeOf(context).height;
    screenWidth = MediaQuery.sizeOf(context).width;
  }

  static void startSplash(BuildContext context) async {
    await getLanguage(context);
    bool isConnected = await ConnectionsNetwork.isConnected();
    if (isConnected) {
      // Navigate to the next screen based on the user's login status
      // For example, if the user is logged in, navigate to the home screen
      // If not, navigate to the login screen
      if (checkUserLoggedIn()) {
        Navigator.pushReplacementNamed(context, RoutesString.home);
      } else {
        await Future.delayed(Duration(seconds: 3));
        Navigator.pushReplacementNamed(context, RoutesString.welcome);
      }
    } else {
      // Handle no internet connection scenario
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('No internet connection')));
    }
  }
}
