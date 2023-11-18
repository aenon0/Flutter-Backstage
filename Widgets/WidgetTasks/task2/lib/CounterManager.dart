import 'package:flutter/material.dart';
import 'package:task2/CountDisplay.dart';
import 'package:task2/CounterControl.dart';

class CounterManager extends StatefulWidget{
  State<StatefulWidget> createState(){
    return _CounterManagerState();    
  }
}

class _CounterManagerState extends State<CounterManager>{
  int num = 0;
  @override
  void initState() {
    super.initState();
    num = 0;
  }
  void _Increment(){
    if(num == 10){
      setState(() {
        num = 0;
      });
    }
    else{
      setState(() {
        num += 1;
      });      
    }
  }
  void _Decrement(){
    if(num == 0){
      setState(() {
        num = 10;
      });
    }
    else{
      setState(() {
        num -= 1;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Column(children:[
      CountDisplay(num),
      CounterControl(_Increment, _Decrement),
      ]);
  }

}