import 'package:flutter/widgets.dart';

class CounterProvider extends ChangeNotifier {
  int counter = 0;

  CounterProvider({this.counter = 0});

  void increment() {
    counter++;
    notifyListeners();
  }

  void decrement() {
    counter--;
    notifyListeners();
  }
}
