class ToDo{
  ToDo({required this.id, required this.toDoText, this.isDone = false});

  String? id;
  String? toDoText;
  bool isDone;

  static List<ToDo> toDoList(){
    return [
        ToDo(id: '01', toDoText: 'Morning Exercise', isDone: true),
        ToDo(id: '02', toDoText: 'Buy Groceries', isDone: true),
        ToDo(id: '03', toDoText: 'Check Emails',),
        ToDo(id: '04', toDoText: 'Team Meeting',),
        ToDo(id: '05', toDoText: 'Work on mobile apps for 2 hours',),
        ToDo(id: '06', toDoText: 'Dinner with Jenny',),
    ];
  }
}