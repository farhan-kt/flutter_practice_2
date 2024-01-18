import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:radio_button_provider/controller/radio_provider.dart';
import 'package:radio_button_provider/view/display.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('HOME'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Consumer<RadioProvider>(
              builder: (context, value, child) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RadioListTile(
                      title: const Text('Male'),
                      value: 'Male',
                      groupValue: value.selectedRadio,
                      onChanged: (val) {
                        value.setSelectedRadio(val.toString());
                      },
                    ),
                    RadioListTile(
                      title: const Text('Female'),
                      value: 'Female',
                      groupValue: value.selectedRadio,
                      onChanged: (val) {
                        value.setSelectedRadio(val.toString());
                      },
                    ),
                    RadioListTile(
                      title: const Text('Others'),
                      value: 'Others',
                      groupValue: value.selectedRadio,
                      onChanged: (val) {
                        value.setSelectedRadio(val.toString());
                      },
                    ),
                  ],
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ScreenDisplay(),
                  ),
                );
              },
              child: const Text('ADD'),
            ),
          ],
        ),
      ),
    );
  }
}
