import 'package:flutter/material.dart';
import 'Container/Login/index.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      title: "Flutter App",
      home: App()
    );
  }
}
