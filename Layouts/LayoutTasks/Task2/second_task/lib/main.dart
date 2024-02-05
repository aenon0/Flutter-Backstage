import 'package:flutter/material.dart';
import 'package:task2/task_custom_input.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        // primaryColor: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [IconButton(onPressed: ()=>{ }, icon: Icon(Icons.arrow_back)), Text("Task Detail", ), IconButton(onPressed: ()=>{ }, icon: Icon(Icons.more_vert))])),
      ),
      body: Center(
        child: Column(children: [Image.asset("task.jpeg"), TaskCustomInput("Title"), TaskCustomInput("Description"), TaskCustomInput("Deadline")])
      )
    );
  }
  
}


