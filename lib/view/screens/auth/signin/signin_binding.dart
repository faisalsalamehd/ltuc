import 'package:get/get.dart';
import 'package:ltuc/view/screens/auth/signin/signin_controller.dart';

class SigninBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=> SigninController());
  }
}