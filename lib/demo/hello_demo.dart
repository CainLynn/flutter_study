import 'package:flutter/material.dart';

class Hello extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(child: 
      Text(
        "hello",
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.yellow,
          fontSize: 40
        ),
      ),
    );;
  }
}