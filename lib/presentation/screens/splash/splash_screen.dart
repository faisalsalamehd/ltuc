import 'package:flutter/material.dart';
import 'package:ltuc/core/utils/constants/generals.dart';
import 'package:ltuc/core/utils/constants/images.dart';
import 'package:ltuc/domain/usecases/splash_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    SplashController.startSplash(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(PngImages.splashBgBlue),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(child: Image.asset(PngImages.nomLogo)),
      ),
    );
  }
}
