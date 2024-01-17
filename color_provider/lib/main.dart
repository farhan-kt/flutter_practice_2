import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_2/controller/color_provider.dart';
import 'package:task_2/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ColorProvider(),
      child: const MaterialApp(
        home: MyHome(),
      ),
    );
  }
}
