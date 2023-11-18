import 'package:first_task/TaskCard.dart';
import 'package:flutter/material.dart';

class TaskManager extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _TaskManagerState();
  }
}

class _TaskManagerState extends State<TaskManager>{
  List taskAndTime = [ ["Do Homework", "Sep 3/2023",Color.fromARGB(255, 190, 177, 56)], ["Code Code", "Jul 3/2023",const Color.fromRGBO(190, 56, 56, 1)], [ "Do Homework", "Sep 3/2023",Color.fromARGB(255, 58, 190, 56)], ["Do Homework", "Sep 3/2023",const Color.fromRGBO(190, 56, 56, 1)], ["Do Homework", "Sep 3/2023",const Color.fromRGBO(190, 56, 56, 1)], ["Do Homework", "Sep 3/2023",Color.fromARGB(255, 56, 190, 72)], ["Code Code", "Jul 3/2023",const Color.fromRGBO(190, 56, 56, 1)], ["Code Code", "Jul 3/2023",Color.fromARGB(255, 83, 56, 190)], ["Code Code", "Jul 3/2023",Color.fromARGB(255, 56, 78, 190)]];
  @override
  Widget build(BuildContext context) {
    return Column(children: taskAndTime.map((element) => TaskCard(element[0], element[1], element[2])).toList());
  }
}