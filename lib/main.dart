import 'package:first_project/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
     MaterialApp(
      home: Scaffold(
        body: GradientContainer(const[
              Color.fromARGB(202, 239, 173, 134),
              Color.fromARGB(201, 134, 239, 211),
              Color.fromARGB(199, 36, 1, 40),
              ])),
    ),
  );
}
