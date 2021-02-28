import 'dart:convert';
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
  var data;
  // http;


  void initState(){
    super.initState();
    getData();
  }

  getData() async{
    var res = await http.get(url);
    data = jsonDecode(res.body);
    setState((){});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Container(
          child: data == null ? Center(child: CircularProgressIndicator()) : 
          ListView.builder(
            itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(data[index]["title"]),
                  leading: Image.network(data[index]["url"]),
                ),
              );
            },
            itemCount: data.length,
          )
        ),
      ),
    );
  }
}