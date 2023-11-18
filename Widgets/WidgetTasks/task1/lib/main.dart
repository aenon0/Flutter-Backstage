import 'package:flutter/material.dart';
import 'package:task1/TextControl.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Task1"),
          ),
          body: Center(child: MyApp()))));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextControl();
  }
}
