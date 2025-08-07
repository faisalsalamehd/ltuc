import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ltuc/view/screens/auth/signin/signin_controller.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SigninController>(
      builder: (ctrl) {
        return Scaffold(
          appBar: AppBar(title: Text(ctrl.title)),
          body: Center(
            child: ElevatedButton(
              onPressed: () {
                ctrl.changeName();
              },
              child: Text('Change Name'),
            ),
          ),
        );
      },
    );
  }
}
