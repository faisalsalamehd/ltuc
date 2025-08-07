import 'package:get/get.dart';

class SigninController extends GetxController {
  String title = 'Hammad';

  void changeName() {
    title = 'New Title';
    update();
  }
}
