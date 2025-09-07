import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ltuc/view/screens/welcome/welcome_controller.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WelcomeController>(
      builder: (ctrl) {
        return Scaffold(
          body: Center(
            child: ElevatedButton(
              onPressed: () async {
                ctrl.getSheIn();
              },
              child: Text('Get Started'),
            ),
          ),
        );
      },
    );
  }
}
