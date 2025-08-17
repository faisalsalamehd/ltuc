import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool isObsecure = true;

  void signUp() async {
    final auth = FirebaseAuth.instance;

    if (emailController.text.isEmpty || passwordController.text.isEmpty) {
      Get.snackbar('Error', 'Please fill all the fields');
      return;
    }

    try {
      auth.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
    } catch (e) {
      print(e.toString());
    }
  }

  void signIn() async {
    final auth = FirebaseAuth.instance;

    if (emailController.text.isEmpty || passwordController.text.isEmpty) {
      Get.snackbar('Error', 'Please fill all the fields');
      return;
    }

    try {
      auth.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
    } catch (e) {
      print(e.toString());
    }
  }

}
