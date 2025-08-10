import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ltuc/util/constant/general.dart';
import 'package:ltuc/util/themes/app_colors.dart';
import 'package:ltuc/view/screens/splash/splash_controller.dart';
import 'package:ltuc/view/widgets/text/body_text1.dart';
import 'package:ltuc/view/widgets/text/headline1.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      builder: (ctrl) {
        return Scaffold(
          backgroundColor: AppColors.primary,
          body: SizedBox(
            width: screenWidth,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Spacer(),
                Icon(Icons.shop, color: Colors.white,size: 70,),
                Headline1(title: 'Fresh Cart', color: Colors.white),
                Spacer(),
                BodyText1(
                  title: 'Freshness Delivered to Your Doorstep',
                  color: Colors.white,
                ),
                SizedBox(height: 32),
              ],
            ),
          ),
        );
      },
    );
  }
}
