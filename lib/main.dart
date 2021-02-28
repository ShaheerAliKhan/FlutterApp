import 'package:flutter/material.dart';
import 'Container/Dashboard/index.dart';
import 'Container/Login/index.dart';
import 'Container/Signup/index.dart';

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
      home: App(),
      routes: {
        "signup" : (context)=> Signup(),
        "dashboard" : (context)=>Dashboard()
      },
    );
  }
}
