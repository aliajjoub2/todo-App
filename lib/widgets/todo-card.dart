// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Todecard extends StatelessWidget {
    final String vartitle;
  const Todecard({Key? key, required this.vartitle}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.9,
      child: Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.all(22),
        // ignore: sort_child_properties_last
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              vartitle,
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
            Icon(
              Icons.close,
              size: 27,
              color: Colors.red,
            )
          ],
        ),
        decoration: BoxDecoration(
            color: Color.fromRGBO(209, 224, 224, 0.2),
            borderRadius: BorderRadius.circular(11)),
      ),
    );
  }
}
