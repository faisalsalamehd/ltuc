import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ltuc/helpers/notification_manager.dart';
import 'package:ltuc/util/constant/general.dart';
import 'package:ltuc/util/translations/trasnsaltion_key.dart';
import 'package:ltuc/view/screens/welcome/welcome_controller.dart';
import 'package:ltuc/view/widgets/primary_button/primary_button.dart';
import 'package:ltuc/view/widgets/text_field.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WelcomeController>(
      builder: (ctrl) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MainTextField(
                  hint: "Email", 
                  textInputType: TextInputType.emailAddress,
                 controller: ctrl.emailController,
                ),
                SizedBox(height: 10,), 
                MainTextField(
                  obscureText: ctrl.isObsecure,
                  hint: "Password", 
                  textInputType: TextInputType.visiblePassword,
                 controller: ctrl.passwordController,
                ),
                SizedBox(height: 16),
                PrimaryButton(
                  onTap: ()  {

                    //  ctrl.signIn();
                    if(FirebaseAuth.instance.currentUser != null){
                      // Get.toNamed("/home");
                      log("Success");
                    }
                    
                  },
                  title: TransltionKey.signin.tr,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
