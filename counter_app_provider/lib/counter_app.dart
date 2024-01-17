import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_task/controller/counter_provider.dart';

class ScreenCounter extends StatelessWidget {
  const ScreenCounter({super.key});

  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CounterProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            const Text("Increase count by 1"),
            Consumer<CounterProvider>(
                builder: (context, value, child) =>
                    Text("${countProvider.count}")),
            ElevatedButton(
                onPressed: () {
                  countProvider.addCount();
                },
                child: const Text('ADD'))
          ],
        ),
      ),
    );
  }
}
