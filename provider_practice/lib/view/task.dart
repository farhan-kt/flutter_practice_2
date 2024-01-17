import 'package:flutter/material.dart';
import 'package:merge_textfield_provider/controller/task_controller.dart';
import 'package:provider/provider.dart';

class ScreenTextField extends StatelessWidget {
  const ScreenTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final providerData = Provider.of<TaskProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME'),
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          children: [
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

            //
          ],
        ),
      ),
    );
  }
}
