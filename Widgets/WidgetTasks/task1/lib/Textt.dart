import 'package:flutter/material.dart';


class Textt extends StatelessWidget{
  String text;
  Textt(this.text);
  @override 
  Widget build(BuildContext context){
    return Text(text);
  }

}