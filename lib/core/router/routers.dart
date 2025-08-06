import 'package:flutter/material.dart';
import 'package:ltuc/core/router/routes_string.dart';
import 'package:ltuc/presentation/screens/auth/signin/signin.dart';
import 'package:ltuc/presentation/screens/auth/signup/signup.dart';
import 'package:ltuc/presentation/screens/splash/splash_screen.dart';
import 'package:ltuc/presentation/screens/welcome/welcome.dart';

Map<String, Widget Function(BuildContext)> routes = <String, WidgetBuilder>{
  // Define your routes here
  RoutesString.splash: (context) => SplashScreen(),
  RoutesString.welcome: (context) => Welcome(),
  RoutesString.login: (context) => Signin(),
  RoutesString.register: (context) => Signup(),
};
