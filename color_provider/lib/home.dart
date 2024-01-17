import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_2/controller/color_provider.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    final providerData = Provider.of<ColorProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
          body: Center(
              child: Column(children: [
        Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Consumer<ColorProvider>(
                builder: (context, value, child) => CircleAvatar(
                  backgroundColor: value.a[value.index],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    providerData.b();
                  },
                  child: const Text('Change Color'))
            ],
          ),
        )
      ]))),
    );
  }
}
