import 'package:flutter/material.dart';

class CounterControl extends StatelessWidget {
  final Function Increment;
  final Function Decrement;

  CounterControl(this.Increment, this.Decrement);

  @override
  Widget build(BuildContext context) {
    return Center(child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(onPressed: () {Increment();}, child: Text("Increment")),
        ElevatedButton(onPressed: () {Decrement();}, child: Text("Decrement")),
      ],
    ));
  }
}
