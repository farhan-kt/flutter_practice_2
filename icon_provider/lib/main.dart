import 'package:flutter/material.dart';
import 'package:icon_provider/controller/icon_provider.dart';
import 'package:icon_provider/view/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => IconProvider(),
      child: const MaterialApp(
        home: ScreenIcon(),
      ),
    );
  }
}
