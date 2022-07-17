// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo/widgets/todo-card.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoApp(),
    );
  }
}



class TodoApp extends StatefulWidget {
  const TodoApp({Key? key}) : super(key: key);

  // ignore: non_constant_identifier_names


  @override
  State<TodoApp> createState() => _TodoAppState();
}

// ignore: non_constant_identifier_names
// class c is small
class Task {
  String title;
  bool status;
  Task({
    required this.title,
    required this.status,
  });
}
List allTasks =[
Task(title: "creat videos", status: false),
Task(title: "creat lesson", status: false),
Task(title: "creat article", status: false),
Task(title: "creat game", status: true),

];

class _TodoAppState extends State<TodoApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 0.7),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(58, 66, 86, 1),
        title: Text(
          "TO DO APP",
          style: TextStyle(
              fontSize: 33, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      // ignore: sized_box_for_whitespace
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            //Todecard(),

            ...allTasks.map((item) => Todecard(
              vartitle: item.title
            ))
          

          
          
          ],
        ),
      ),
    );
  }
}