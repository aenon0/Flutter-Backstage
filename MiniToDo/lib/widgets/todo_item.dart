import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_mini/constants/colors.dart';
import 'package:to_do_mini/models/todo.dart';

class ToDoItem extends StatelessWidget{
  final ToDo toDo;
  final onToDoChanged;
  final onDeleteItem;
  const ToDoItem ({Key? key, required this.toDo, required this.onToDoChanged, required this.onDeleteItem}): super(key: key);

  @override
  Widget build(BuildContext context) {
      return Container(margin: const EdgeInsets.only(bottom: 20), child:  ListTile(
        onTap: () {
          onToDoChanged(toDo);
        },
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: Colors.white,
        leading: Icon(toDo.isDone?Icons.check_box : Icons.check_box_outline_blank, color: tdBlue,),
        title: Text(toDo.toDoText ?? 'UnTitled', style: TextStyle(fontSize: 16,
            decoration: toDo.isDone? TextDecoration.lineThrough : null, color: tdBlack),),
        trailing: Container(padding: const EdgeInsets.all(0), height: 35, width: 35,
          decoration:  BoxDecoration(color: tdRed, borderRadius: BorderRadius.circular(5)), child: IconButton(iconSize: 18, color: Colors.white, icon: const Icon(Icons.delete), onPressed: (){onDeleteItem(toDo.id);},),),
      ),
      );
  }

}