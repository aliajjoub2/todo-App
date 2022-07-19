
import 'package:flutter/material.dart';


class Counter extends StatelessWidget {
  final int myTaskdone;
  final int myAllTask;
  const Counter({Key? key, required this.myTaskdone, required this.myAllTask})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22),
      child: Text("$myTaskdone/$myAllTask", style: TextStyle(fontSize: 22, 
      color: myTaskdone== myAllTask ? const Color.fromARGB(255, 142, 253, 200) : Colors.white,
      ),),
    );
  }
}
