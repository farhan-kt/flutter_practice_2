import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:radio_button_provider/controller/radio_provider.dart';

class ScreenDisplay extends StatelessWidget {
  const ScreenDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(Provider.of<RadioProvider>(context).selectedRadio),
      ),
    );
  }
}
