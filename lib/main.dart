// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo/widgets/Counter.dart';

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

List allTasks = [
  Task(title: "creat videos", status: false),
  Task(title: "creat lesson", status: true),
  Task(title: "creat article", status: true),
  Task(title: "creat game", status: true),
];

class _TodoAppState extends State<TodoApp> {
  addTask() {
    setState(() {
      allTasks.add(Task(title: myController.text, status: false));
    });
  }

  final myController = TextEditingController();

  int calculateCompletedTasks() {
    int completedTasks = 0;

    // ignore: avoid_function_literals_in_foreach_calls
    allTasks.forEach((item) {
      if (item.status) {
        completedTasks++;
      }
    });

    return completedTasks;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return Dialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100)),
                  backgroundColor: Color.fromARGB(3, 213, 229, 245),
                  child: Container(
                    padding: EdgeInsets.all(22),
                    width: 200,
                    height: 200,

                    color: Color.fromARGB(255, 209, 200, 252),
                    // ignore: prefer_const_literals_to_create_immutables
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextField(
                            controller: myController,
                            maxLength: 40,
                            decoration:
                                InputDecoration(hintText: 'add neu Task'),
                          ),
                          TextButton(
                              onPressed: () {
                                addTask();
                                Navigator.pop(context);
                              },
                              child: Text(
                                'Add',
                                style: TextStyle(fontSize: 22),
                              ))
                        ]),
                  ),
                );
              });
        },
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
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
            Counter(
                myAllTask: allTasks.length,
                myTaskdone: calculateCompletedTasks()),
            //Todecard(),

            Container(
              margin: EdgeInsets.all(10),
              height: 550,
              child: ListView.builder(
                  itemCount: allTasks.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Todecard(
                        vartitle: allTasks[index].title,
                        doOrNot: allTasks[index].status);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
