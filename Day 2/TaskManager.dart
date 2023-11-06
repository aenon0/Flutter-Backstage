import 'dart:io';
void main() {
  TaskManger taskManger = TaskManger();
  while(true){
    print('1) Add a new task\n2) View all tasks\n3) View only completed tasks\n4) View only pending tasks\n5)Edit a task \n6)Delete a task');  
    var choice = int.parse(stdin.readLineSync() ?? "7");
    switch(choice){
      case 1:
        print("Enter title, description, and dateTime respectively.");
        var title = stdin.readLineSync() ?? "";
        var description = stdin.readLineSync() ?? "";
        var dateTime = DateTime.parse(stdin.readLineSync() ?? DateTime.now().toString());
        taskManger.addTask(title, description, dateTime);
        break;
      case 2:
        taskManger.viewAllTasks();
        break;
      case 3:
        taskManger.viewCompletedTasks();
        break;
      case 4:
        taskManger.viewPendingTasks();
        break;
      case 5:
        taskManger.editTask();
        break;
      case 6:
        taskManger.deleteTask();
        break;
      default:
        print("Wrong Entry.");
        break;
    }
  }
  
}
class Task{
  String? title, description;
  DateTime? dateTime;
  bool? completed;
  
  Task(String title, description, DateTime dateTime){
    this.title = title;
    this.description = description;
    this.dateTime = dateTime;
  }
}
class TaskManger{
  List<Task> tasks = [ ];
  
  void addTask(String title, String description, DateTime dateTime){
    tasks.add(Task(title, description, dateTime));
  }

  void viewAllTasks(){
    
    for(var task in tasks){
      var title = task.title;
      var description = task.description;
      var dateTime = task.dateTime;
      var completed = task.completed;
      print("$title $description $dateTime $completed");
    }    
  
  }

  void viewCompletedTasks(){

      for(var task in tasks){
        var title = task.title;
        var description = task.description;
        var dateTime = task.dateTime;
        if(task.completed == true){
          print("$title $description $dateTime");
        }
      }  
    
    }

  void viewPendingTasks(){

    for(var task in tasks){
      var title = task.title;
      var description = task.description;
      var dateTime = task.dateTime;
      if(task.completed == null){
        print("$title $description $dateTime");
      }
    }  

  }
  
  void editTask(){
    for(var idx = 0 ; idx < tasks.length; idx++){
      var title = tasks[idx].title;
      var description = tasks[idx].description;
      var dateTime = tasks[idx].dateTime;
      var completed = tasks[idx].completed;
      print("$idx: $title $description $dateTime $completed");
    }    
    print("Enter the index");
    var edited_idx = int.parse(stdin.readLineSync() ?? "0");
    if(edited_idx >= tasks.length || edited_idx < 0){
      print("Wrong Entry.");
      return;
    }
    print("Enter the title, description, dateTime, status respectively.");
    var temp = [ ];
    for(var i = 0; i < 4; i++){
        temp.add(stdin.readLineSync() ?? "");
    }
    if (temp[0] != ""){
      tasks[edited_idx].title = temp[0];
    }
    if (temp[1] != ""){
      tasks[edited_idx].description = temp[1];
    }
    if( temp[2] != ""){
      tasks[edited_idx].dateTime = DateTime.parse(temp[3] ?? tasks[edited_idx].dateTime.toString()); 
    }    
    if (temp[3] != ""){
      if (temp[3] == "true" || temp[3] == "True"){
          tasks[edited_idx].completed = true ;
      }
    }
    
    
  }

  void deleteTask(){
    for(var idx = 0 ; idx < tasks.length; idx++){
      var title = tasks[idx].title;
      var description = tasks[idx].description;
      var dateTime = tasks[idx].dateTime;
      var completed = tasks[idx].completed;
      print("$idx: $title $description $dateTime $completed");
    }   
    print("Enter the index");
    var deleted_idx  = int.parse(stdin.readLineSync() ?? tasks.length.toString());
    if (deleted_idx >= tasks.length || deleted_idx < 0){
      print("Wrong Entry.");
      return;
    }
    tasks.remove(tasks[deleted_idx]);
  }

}
  