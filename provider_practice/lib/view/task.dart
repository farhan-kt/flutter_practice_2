import 'package:flutter/material.dart';
import 'package:merge_textfield_provider/controller/task_controller.dart';
import 'package:provider/provider.dart';

class ScreenTextField extends StatelessWidget {
  const ScreenTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final providerData = Provider.of<TaskProvider>(context, listen: false);
    final sizedBox = const SizedBox(height: 20);
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30),
            // Merge Two TextField

            /*    TextField(
              controller: providerData.firstName,
            ),
            TextField(
              controller: providerData.lastName,
            ),
            ElevatedButton(
                onPressed: () {
                  providerData.mergeText();
                },
                child: const Text('Merge Text')),
            Consumer<TaskProvider>(
                builder: (context, value, child) => Text("${value.newName}")) */

            // Increasing Container Size

            /*  Consumer<TaskProvider>(
              builder: (context, value, child) => Container(
                color: Colors.teal,
                height: providerData.containerHeight,
                width: providerData.containerWidth,
              ),
            ),
            sizedBox,
            ElevatedButton(
                onPressed: () {
                  providerData.changeSize();
                },
                child: Text('Increase Size')) */

            // Up and Down Container Size

            Consumer<TaskProvider>(
              builder: (context, value, child) => Container(
                color: Colors.teal,
                height: value.reSize ? 200 : 100,
                width: value.reSize ? 200 : 100,
              ),
            ),
            sizedBox,
            ElevatedButton(
                onPressed: () {
                  providerData.changeSize();
                },
                child: Text('Resize'))
          ],
        ),
      ),
    );
  }
}
