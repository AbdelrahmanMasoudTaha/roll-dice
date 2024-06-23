import 'package:flutter/material.dart';
import 'package:flutter_application_1/gradiant_container.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,

    home: Scaffold(
      body: GradiantContainer(
          color1: Colors.cyan,
          color2: Color.fromRGBO(150, 21, 237, 0.9),
      )
    ),
  ));
}
