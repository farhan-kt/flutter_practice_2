import 'package:flutter/material.dart';

class RadioProvider extends ChangeNotifier {
  String selectedRadio = 'Male';

  void setSelectedRadio(String val) {
    selectedRadio = val;
    notifyListeners();
  }
}
