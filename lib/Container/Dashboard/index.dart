import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Dashboard extends StatefulWidget {
  final String email;
  const Dashboard({Key key, this.email : "shaheer.khan@m3tech.com.pk"}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var url = "https://jsonplaceholder.typicode.com/photos";
  // http;
  void initState(){
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: LinearProgressIndicator(),
      ),
    );
  }
}