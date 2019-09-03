import 'package:flutter/material.dart';
import 'page/simple_input.dart';
import 'page/page_register.dart';
import 'page/basic_listview.dart';
import 'page/list_horizontal.dart';
import 'page/simple_grid.dart';
import 'page/custom_grid.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: PageHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PageHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Home'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Column(
        children: <Widget>[
          Text(
            'Day 2 Apps',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                color: Colors.pinkAccent),
          ),
          Container(
            //retrieve value
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 35.0),
            child: RaisedButton(
              color: Colors.pinkAccent,
              textColor: Colors.white,
              child: Text('Input Widget Simple'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PageSimpleInput()));
              },
            ),
          ),
          Container(
            //retrieve value
            margin: EdgeInsets.only(top: 35.0),
            child: RaisedButton(
              color: Colors.pinkAccent,
              textColor: Colors.white,
              child: Text('Form Register'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PageRegister()));
              },
            ),
          ),

          Container(
            //retrieve value
            margin: EdgeInsets.only(top: 35.0),
            child: RaisedButton(
              color: Colors.pinkAccent,
              textColor: Colors.white,
              child: Text('Basic Listview'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>BasicListView()));
              },
            ),
          ),

          Container(
            //retrieve value
            margin: EdgeInsets.only(top: 35.0),
            child: RaisedButton(
              color: Colors.pinkAccent,
              textColor: Colors.white,
              child: Text('List Horizontal'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ListHorizonal()));
              },
            ),
          ),

          Container(
            //retrieve value
            margin: EdgeInsets.only(top: 35.0),
            child: RaisedButton(
              color: Colors.pinkAccent,
              textColor: Colors.white,
              child: Text('Simple Grid'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SimpleGridView()));
              },
            ),
          ),

          Container(
            //retrieve value
            margin: EdgeInsets.only(top: 35.0),
            child: RaisedButton(
              color: Colors.pinkAccent,
              textColor: Colors.white,
              child: Text('Custom Gridview'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CustomGriView()));
              },
            ),
          ),

        ],
      ),
    );
  }
}
