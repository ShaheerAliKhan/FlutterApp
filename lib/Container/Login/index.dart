import 'package:app/Components/Button/index.dart';
import 'package:app/Components/Input/index.dart';
import 'package:app/Container/Dashboard/index.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {

  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override

  void initState(){
    super.initState();
  }
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Input(
              label: "Email",
              hint: "Enter Email",
              password: false,
              keyboardType: TextInputType.emailAddress,
              controller: _email,
            ),
            Input(
              label: "Password",
              hint : "Enter Password",
              password: true,
              controller: _password,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(
                  text: "Login",
                  color: Colors.red,
                  onPress: (){
                    print("Email: ${_email.text} Password: ${_password.text}");
                  },
                ),
                Button(
                  text: "Signup",
                  color: Colors.blue,
                  onPress: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> Dashboard(email: _email.text,))
                    );
                  },
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(10),
            ),
            Text(
              "Don't have accont? Signup",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      )
    );
  }
}