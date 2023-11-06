// import 'dart:io';
void main(){
//       DATA TYPES
  
//   print("hello world");
//   dynamic name = "henon";
//     if (name is int){
//     print("first int");
//   }
//   if (name is String){
//     print("first string");
//   }
//   name = 9;
//   if (name is int){
//     print("second int");
//   }
  
//  error: not possible declare const variable 
//   const int compile_time_variable;
//   compile_time_variable = 23;
//   print(compile_time_variable);
  
//   possible to do it with final variables
  
//   final int run_time_variable;
//   run_time_variable = 43;
//   print(run_time_variable);

//   the following gives an error unless we use ? to show its nullable
//   String myName;
//   print(myName);
//      int? num;
//      print(num);
      
  
  
  
//   DATA STRUCTURES
  
//   Lists
//   List<dynamic> list1 = [1, 2, 3];
//   var list2 = [1, "second", 3];
//   List<dynamic> list3 = List<dynamic>.from(list2);
//   list3.addAll(list1);
//   print(list2);
  
//      var list =[1, 'a', "b", "c", 'a'];
//      list.insert(1, 2);
//      list.remove("a");
//      list.removeAt(0);
//      print(list);
//      print(list.length);
  
  
//   List<dynamic> myList1 = [ ];
//   print(myList1);
//   myList1.add("A");
//   myList1.add(2);
//   print("After adding 'A': $myList1");
  
//   List<dynamic> myList2 = [1, 2, 3];
//   print(myList2);
//   myList2.addAll(myList1);
//   print('After adding myList1 to myList2 $myList2');
 
//   Maps
//   var myMap = {
//     "a" : 1,
//     "b" : 2,
//     "c" : 3 
//     };
//   myMap.addAll({
//     "d" : 4, 
//     "e" : 5,
//     "f" : 6
//   });
//   myMap.remove("f");
//   myMap["a"] = 97;
//   print(myMap["a"]);
//   print(myMap.length);
//   print(myMap.keys);
//   print(myMap.values);
//   myMap.clear();
//   print(myMap);
  
    
  
//   LOOPS
//   for loop
//   var num = 5;
//   for (var i = num; i >= 1; i--){
//    print(i); 
//   }
// //   for in loop
//   var names = ["henon", "aenon"];
//   for (var name in names){
//     print(name);
//   }
// //   while loop
//   var i = num;
//   while ( i >= 1){
//     print(i);
//     i -= 1;
//   }
  
//   LOGIC: if/else if/ else
//   var nums = [0, 1, 2];
//   for(var num in nums){
//     if(num == 0){
//       print("zero");
//     }
//     else if (num == 1){
//       print("one");
//     }
//     else{
//       print("Neither");
//     }
//   }
  
// FUNCTION
  
//   sayHello(String name1, [name2]){
//     return "Hello, $name1 and $name2";
//   }
//   print(sayHello("doggie", "a"));
//   print(sayHello("doggie"));
//     sayHello(String name1, {name2="cattie"}){
//     return "Hello, $name1 and $name2";
//     }
//   print(sayHello("doggie"));  
//   print(sayHello("doggie", name2:"lala"));
  
 
  // Input
  // print("Name: ");
  // String? name = stdin.readLineSync();
  // print("Hello $name");

  // Type Conversion
  // var num = "1";
  // var new_num = int.parse(num);
  // var check = new_num is int;
  // print("is $new_num integer? $check");
  
  // var double_num = "0.001";
  // var new_num1 = double.parse(double_num);
  // var check1 = new_num1 is double;
  // print("is $new_num double? $check1");

  // var letter_num = 2;
  // var new_num3 = letter_num.toString();
  // var check3 = new_num3 is String;
  // print("is $new_num3 integer? $check3");

  // User Input Conversion
   // var num = int.parse(stdin.readLineSync() ?? "0");
   // print(num);
  
  //OOP
  // Person p1 = Person("mrs.x", 30);
  // p1.showData();
  // Person p2 = Person();
  // p2.addData("a", 1);
  // p2.showData();
  // Person p3 = Person();
  // p3.name = "No one";
  // p3.showData();
  
    
}


// OOP
class Person{
  // class variable need to be either initialized or nullable
  String? name;
  int? age;

  // Constructor
  // Person(name, age){
  //   this.name = name;
  //   this.age = age;
  // }

  // Method
  void addData(String name, int age){
      this.name = name;
      this.age = age;
    }
  void showData(){
    print("Name : $name");
    print("Age : $age");
  }
  
}
