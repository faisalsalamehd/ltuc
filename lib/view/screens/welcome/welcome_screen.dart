import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ltuc/util/translations/trasnsaltion_key.dart';
import 'package:ltuc/view/screens/welcome/welcome_controller.dart';
import 'package:ltuc/view/widgets/primary_button/primary_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WelcomeController>(
      builder: (ctrl) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: PrimaryButton(onTap: () {}, title: TransltionKey.signin.tr),
            ),
          ),
        );
      },
    );
  }
}
