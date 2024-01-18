import 'package:drop_down_provider/controller/drop_down_provider.dart';
import 'package:drop_down_provider/view/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DropDownProvider(),
      child: const MaterialApp(
        home: Screenhome(),
      ),
    );
  }
}
