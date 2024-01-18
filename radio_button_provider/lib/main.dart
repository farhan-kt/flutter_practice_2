import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:radio_button_provider/controller/radio_provider.dart';
import 'package:radio_button_provider/view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => RadioProvider(),
        child: MaterialApp(
          home: ScreenHome(),
        ));
  }
}
