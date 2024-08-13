import 'package:flutter/material.dart';
import 'package:golden_test_counter/wave_clipper.dart';
import 'my_home_page.dart'; // Import the MyHomePage widget

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(), // Use the MyHomePage widget
    );
  }
}
