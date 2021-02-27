import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  final String email;

  const Dashboard({Key key, this.email : "shaheer.khan@m3tech.com.pk"}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      drawer: Drawer(
        child: DrawerHeader(
          child: Container(
            child: Text(email),
          ) 
        ),
      ),
    );
  }
}