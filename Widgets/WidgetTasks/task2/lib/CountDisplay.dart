import 'package:flutter/material.dart';

class CountDisplay extends StatelessWidget{
  int num;
  CountDisplay(this.num);
  @override
  Widget build(BuildContext context) {
    return Text(num.toString());
  }
  
}