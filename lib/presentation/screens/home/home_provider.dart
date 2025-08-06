import 'package:flutter/widgets.dart';

class HomeProvider extends ChangeNotifier {
  int currentIndex = 0;

  HomeProvider({this.currentIndex = 0});
  void incrementIndex() {
    currentIndex++;
    notifyListeners();
  }

  void decrementIndex() {
    if (currentIndex > 0) {
      currentIndex--;
      notifyListeners();
    }
  }
}
