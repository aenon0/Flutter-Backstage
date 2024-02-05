import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_mini/constants/colors.dart';
import 'package:to_do_mini/models/todo.dart';
import 'package:to_do_mini/widgets/todo_item.dart';

class Home extends StatefulWidget {
  Home({super.key});
  @override
  _HomeState createState() => _HomeState();

}

class _HomeState extends State<Home>{
  final toDoList = ToDo.toDoList();
  List<ToDo> foundToDo = [ ];
  final _toDoController = TextEditingController();
  @override
  void initState(){
    foundToDo = toDoList;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: tdBGColor,
        appBar: _buildAppBar(),
        body: Stack(children: [
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child:
              Column(
                children:
                [searchBox(),
                  Expanded(
                      child: ListView(
                        children: [Container(margin: const EdgeInsets.only(top: 50, bottom: 20),
                            child: const Text("All Todos", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500))),
                          for (ToDo toDo in foundToDo.reversed)
                            ToDoItem(toDo: toDo, onToDoChanged: _handleToDoChange, onDeleteItem: _deleteToDoItem)

                        ],)
                  )
                ],
              )
          ),
          Align(alignment: Alignment.bottomCenter,
            child: Row(children: [
              Expanded(child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow:  const [BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 10.0,
                      spreadRadius: 0.0)],
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: const EdgeInsets.only(bottom: 20,right: 20, left: 20 ),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: TextField(
                  controller: _toDoController,
                  decoration: const InputDecoration(
                      hintText: 'Add a new todo item',
                      border: InputBorder.none
                  ),
                ),
              )
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 20, right: 20),
                child: ElevatedButton(
                  onPressed: (){ _addToDoItem(_toDoController.text);},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: tdBlue,
                      minimumSize: const Size(60, 60),
                      elevation: 10
                  ),
                  child: const Text('+', style: TextStyle(fontSize: 40,) ),
                ),
              )
            ],),
          ),

        ]
        )
    );
  }


  void _handleToDoChange(ToDo toDo){
    setState((){
      toDo.isDone = !toDo.isDone;
    });
  }
  void _deleteToDoItem(String id){
    setState((){
      toDoList.removeWhere((item) => (item.id == id));
    });
  }
 void _addToDoItem(String toDo){
    setState(() {
      toDoList.add(ToDo(id: DateTime.now().millisecondsSinceEpoch.toString(), toDoText: toDo));
    });
    _toDoController.clear();
 }
void _runFilter(String enteredKeyword){
    List<ToDo> result = [ ];
    if(enteredKeyword.isEmpty){
      result = toDoList;
    }
    else{
      result = toDoList.where((toDo) => toDo.toDoText!.toLowerCase().contains(enteredKeyword.toLowerCase())).toList();
    }
    setState(() {
      foundToDo = result;
    });

}
  Widget searchBox(){
    return Container(padding:const EdgeInsets.symmetric(horizontal: 15),decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)), child:  TextField(
      onChanged: (value) => _runFilter(value),
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search, size: 20, color: tdBlack,),
        contentPadding: EdgeInsets.all(0),
        prefixIconConstraints: BoxConstraints(
            maxHeight: 20,
            minWidth: 25
        ),
        border: InputBorder.none,
        hintText: "Search",
        hintStyle: TextStyle(color: tdGrey),

      ),
    )
    );
  }
  AppBar _buildAppBar(){
    return AppBar(
        elevation: 0,
        backgroundColor: tdBGColor,
        title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [const Icon(Icons.menu, color: tdBlack, size:30), Container(width: 40, height: 40, child: ClipRRect(borderRadius: BorderRadius.circular(20), child: Image.asset("assets/images/todo.jpg"),),)],
        )
    );
  }

}