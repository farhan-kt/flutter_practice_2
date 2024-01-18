import 'package:flutter/material.dart';

class TaskProvider extends ChangeNotifier {
  // Merge Two TextField

  /*final firstName = TextEditingController();
  final lastName = TextEditingController();

  dynamic newName;
  void mergeText() {
    newName = firstName.text + ' ' + lastName.text;
    notifyListeners();
  }
*/

// Increasing Container Size

/*   double containerHeight = 100;
  double containerWidth = 100;

  void changeSize() {
    containerHeight = containerHeight + 100;
    containerWidth = containerWidth + 100;
    notifyListeners();
  } */

  // Up and Down Container Size

  bool reSize = false;

  void changeSize() {
    reSize = !reSize;
    notifyListeners();
  }
}
