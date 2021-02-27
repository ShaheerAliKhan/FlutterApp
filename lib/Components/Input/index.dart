import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final String hint;
  final String label;
  final bool password;
  final TextInputType keyboardType;
  final TextEditingController controller;

  const Input(
    {
      Key key, 
      this.label : "Enter Placeholder", 
      this.hint : "Enter Hint", 
      this.password : false,
      this.keyboardType : TextInputType.text, 
      this.controller
      }
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: password,
        decoration: InputDecoration(
          labelText: label, 
          hintText: hint,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}