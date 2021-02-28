import 'package:app/Components/Button/index.dart';
import 'package:app/Components/Input/index.dart';
import 'package:flutter/material.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    var account = "Already have an account?";
    return Scaffold(
      appBar: AppBar(
        title: Text("Signup"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome To Application',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
          Input(
            hint: "Enter Full Name",
            label: "Full Name",
          ),
          Input(
            hint: "Enter Email",
            label: "Email",
          ),
          Input(
            hint: "Enter Password",
            label: "Password",
            password: true,
          ),
          Input(
            hint: "Confirm Password",
            label: "Confirm Password",
            password: true,
          ),
          Button(
            text: 'Signup',
            color: Colors.teal,
          ),
          Container(
            margin: EdgeInsets.all(10),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(account+" "),
              TouchableOpacity(
                onTap : (){
                  Navigator.pop(context);
                },
                child: Text('Login!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                  ),
                )
              )
            ],
          ),
        ],
      )
    );
  }
}