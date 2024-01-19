import 'package:flutter/material.dart';

class IconProvider extends ChangeNotifier {
  final iconController = TextEditingController();

  Map<String, IconData> iconName = {
    'home': Icons.home,
    'delete': Icons.delete,
    'add': Icons.abc,
    'favourite': Icons.favorite
  };
  IconData? selectedIcon;
  void takeText() {
    String enteredText = iconController.text.toLowerCase();
    if (iconName.containsKey(enteredText)) {
      selectedIcon = iconName[enteredText];
    } else {
      selectedIcon = null;
    }
    notifyListeners();
  }
}
