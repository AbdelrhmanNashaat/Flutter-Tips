import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text(
            '5'.toInt().toString(),
            style: const TextStyle(
                fontSize: 200,
                color: Colors.deepPurple,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}

// on keyword : add new methods to which class , used to add this methods for this class

extension NumberParsing on String {
  // create method i want to add
  int toInt() {
    // write the code i want method to do it
    return int.parse(this);
  }
}
