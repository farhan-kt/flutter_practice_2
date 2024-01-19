import 'package:flutter/material.dart';
import 'package:icon_provider/controller/icon_provider.dart';
import 'package:provider/provider.dart';

class ScreenIcon extends StatefulWidget {
  const ScreenIcon({super.key});

  @override
  State<ScreenIcon> createState() => _ScreenIconState();
}

class _ScreenIconState extends State<ScreenIcon> {
  @override
  Widget build(BuildContext context) {
    final iconProvider = Provider.of<IconProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text("HOME"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          children: [
            TextFormField(
              controller: iconProvider.iconController,
            ),
            ElevatedButton(
                onPressed: () {
                  iconProvider.takeText();
                },
                child: Text('CLICK')),
            CircleAvatar(
              maxRadius: 50,
              child: Center(
                child: Consumer<IconProvider>(
                    builder: (context, value, child) => value.iconName != null
                        ? Icon(value.selectedIcon)
                        : SizedBox()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
