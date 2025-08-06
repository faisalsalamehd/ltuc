import 'package:flutter/widgets.dart';

class SigninProvider extends ChangeNotifier {
  bool isRememberMeChecked = false;
  bool isPasswordVisible = false;
  SigninProvider({this.isRememberMeChecked = false, this.isPasswordVisible = false});

  void toggleRememberMe(bool value) {
    isRememberMeChecked = value;
    notifyListeners();
  }
  void togglePasswordVisibility() {
    isPasswordVisible = !isPasswordVisible;
    notifyListeners();
  }
}
