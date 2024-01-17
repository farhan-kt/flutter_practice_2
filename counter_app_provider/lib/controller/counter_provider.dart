import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int count = 0;

  void addCount() {
    count = count + 1;
    notifyListeners();
  }
}
