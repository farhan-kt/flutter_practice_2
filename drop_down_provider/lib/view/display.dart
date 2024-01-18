import 'package:drop_down_provider/controller/drop_down_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScreenDisplay extends StatelessWidget {
  const ScreenDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(Provider.of<DropDownProvider>(context).selectedValue),
      ),
    );
  }
}
