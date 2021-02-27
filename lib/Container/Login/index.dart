import 'package:app/Components/Button/index.dart';
import 'package:app/Components/Input/index.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

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
              controller: email,
            ),
            Input(
              label: "Password",
              hint : "Enter Password",
              password: true,
              controller: password,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(
                  text: "Login",
                  color: Colors.red,
                  onPress: (){
                    print("Email: ${email.text} Password: ${password.text}");
                  },
                ),
                Button(
                  text: "Signup",
                  color: Colors.blue,
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}

