// ignore: file_names
// ignore: file_names
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Todecard extends StatelessWidget {
  final String vartitle;
  final bool doOrNot;
  final int index;
  final Function changeStatus;
  final Function delete;
  const Todecard(
      {Key? key,
      required this.vartitle,
      required this.doOrNot,
      required this.index,
      required this.changeStatus,
      required this.delete})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        changeStatus(index);
      },
      child: FractionallySizedBox(
        widthFactor: 0.9,
        child: Container(
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.all(22),
          // ignore: sort_child_properties_last
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  vartitle,
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                SizedBox(
                  width: 30,
                ),
                Icon(
                  doOrNot ? Icons.check : Icons.close,
                  size: 27,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 10,
                ),
               
                IconButton(
                    onPressed: () {
                      delete(index);
                    },
                    icon: Icon(Icons.delete))
              ],
            ),
          ),
          decoration: BoxDecoration(
              color: Color.fromRGBO(209, 224, 224, 0.2),
              borderRadius: BorderRadius.circular(11)),
        ),
      ),
    );
  }
}
