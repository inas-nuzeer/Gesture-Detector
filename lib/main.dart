import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  @override
  Color BackgroundColor = Colors.lightBlue;
  void ChangeColor() {
    setState(() {
      BackgroundColor =
          Colors.primaries[Random().nextInt(Colors.primaries.length)];
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Gesture Detector"),
        ),
        body: GestureDetector(
          onTap: ChangeColor,
          child: Container(color: BackgroundColor),
        ),
      ),
    );
  }
}
