import 'package:app/Components/Button/index.dart';
import 'package:app/Components/Input/index.dart';
import 'package:flutter/material.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

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

    var account = "Dont Have Account?";

    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome To Application',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
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
            Button(
            text: "Login",
            color: Colors.teal,
            onPress: (){

              print("Email: ${_email.text} Password: ${_password.text}");

              var email =_email.text == "" ?  false : true;
              var password = _password.text == "" ? false : true;

              if(email && password){
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context)=> Dashboard(email: _email.text))
                // );
                Navigator.pushNamed(context, 'dashboard');
              } 
            },
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
                  Navigator.pushNamed(context, "signup");
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context)=> Signup())
                  // );
                },
                child: Text('Signup!',
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