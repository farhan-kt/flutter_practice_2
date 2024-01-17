import 'package:flutter/material.dart';
import 'package:merge_textfield_provider/controller/task_controller.dart';
import 'package:merge_textfield_provider/view/task.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskProvider(),
      child: MaterialApp(
          title: 'TASK',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          ),
          home: const ScreenTextField()),
    );
  }
}
