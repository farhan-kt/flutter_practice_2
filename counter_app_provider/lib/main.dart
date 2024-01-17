import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_task/controller/counter_provider.dart';
import 'package:provider_task/counter_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: const MaterialApp(
        home: ScreenCounter(),
      ),
    );
  }
}
