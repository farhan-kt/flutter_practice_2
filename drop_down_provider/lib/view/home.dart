import 'package:drop_down_provider/view/display.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:drop_down_provider/controller/drop_down_provider.dart';

class Screenhome extends StatelessWidget {
  const Screenhome({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HOME')),
      body: Center(
        child: Column(
          children: [
            Consumer<DropDownProvider>(
              builder: (context, value, child) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DropdownButton<String>(
                      value: value.selectedValue,
                      onChanged: (String? newValue) {
                        if (newValue != null) {
                          value.setSelectedValue(newValue);
                        }
                      },
                      items: <String>['Opt1', 'Opt2', 'Opt3']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
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
                          builder: (context) => const ScreenDisplay()));
                },
                child: const Text('ADD'))
          ],
        ),
      ),
    );
  }
}
