import 'package:flutter/material.dart';

class TaskCustomInput extends StatelessWidget{
  String label;
  TaskCustomInput(this.label);
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(20), child:Column(children: [Align(alignment: Alignment.topLeft, child: Text(label)), TextField(decoration: InputDecoration(filled: true, fillColor: Colors.black12))]));
  }

}

