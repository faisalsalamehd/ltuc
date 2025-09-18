import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:ltuc/preferences/shared_pref.dart';
import 'package:ltuc/preferences/shared_string.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Splash());
  }
}

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  bool isFirstTime = true;
  @override
  void initState() {
    getData();
    super.initState();
  }

  void getData() async {
    await SharedPref.initSharedPref();
    isFirstTime = SharedPref.getIsFirstTime();
    log(isFirstTime.toString());
    if (isFirstTime) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => OnBoarding()));
      return;
    }
    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            SharedPref.setIsFirstTime(
              key: SharedStrign.isFirstTime,
              value: false,
            );
          },
          child: Text('Submit'),
        ),
      ),
    );
  }
}

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            SharedPref.setIsFirstTime(
              key: SharedStrign.isFirstTime,
              value: false,
            );
          },
          child: Text('Login', style: TextStyle(fontSize: 30)),
        ),
      ),
    );
  }
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Home', style: TextStyle(fontSize: 30))),
    );
  }
}

// you need to call SharedPreferences when you run the project
// final SharedPreferences prefs = await SharedPreferences.getInstance();
// await SharedPref.initSharedPref();

// you need call important data like
// jwt for api 
// check language
// check theme
// check notification token we use token to send notification
// if you use onboarding check bool for it

// on logut you need to delete some data
// jwt