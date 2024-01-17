import 'package:flutter/material.dart';

class ColorProvider extends ChangeNotifier {
  List a = [Colors.red, Colors.yellow, Colors.green, Colors.blue];
  dynamic index = 0;
  void b() {
    index = index + 1;
    notifyListeners();
  }
}
