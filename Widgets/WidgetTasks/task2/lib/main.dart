import 'package:flutter/material.dart';

import './CounterManager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Task 2"),),
        body: Center(child : CounterManager()),
      ),
    );
  }
}
