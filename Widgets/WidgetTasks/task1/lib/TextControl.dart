import 'package:flutter/material.dart';

import './Textt.dart';

class TextControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextControlState();
  }
}

class _TextControlState extends State<TextControl> {
  String text = "";
  @override
  void initState() {
    super.initState();
    text = "Before Button Press";
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[ 
      Textt(text),
      ElevatedButton(onPressed: (){
        setState(() {
          if (text == "After Button Press"){
            text = "Before Button Press";
          }
          else{
            text = "After Button Press";
          }
          
        });
      }, child: Text("Change Text"))
    ]);
  }
}
