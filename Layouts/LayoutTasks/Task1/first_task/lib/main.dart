import 'package:flutter/material.dart';

import 'TaskManager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: const Color.fromRGBO(190, 56, 56, 1),
              ),
              onPressed: () => {},
            ),
            title: Center(child: Text("To Do List")),
            actions: [
              IconButton(onPressed: () => {}, icon: Icon(Icons.more_vert))
            ]),
        body: SingleChildScrollView(
          child: Center(
              child: Container(
                  child: Column(children: [
            Container(height: 200, child: Image.asset("food.jpg")),
            TaskManager(),
            Center(child: Container(
                width: 300,
                height: 60,
                child: ElevatedButton(
              onPressed: () => {},
              child: Text(
                "Create Task",
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 24),
              ),
              style: ElevatedButton.styleFrom(
                  primary: const Color.fromRGBO(190, 56, 56, 1)),
                  
                  
            )))
          ]))),
        ));
  }
}
