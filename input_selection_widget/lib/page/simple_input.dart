import 'package:flutter/material.dart';


class PageSimpleInput extends StatefulWidget {
  @override
  _PageSimpleInputState createState() => _PageSimpleInputState();
}

class _PageSimpleInputState extends State<PageSimpleInput> {

  //buat ngambil value

  TextEditingController etUsername = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page SimpleInput'),
        backgroundColor: Colors.pinkAccent,
      ),

      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(7.0),
            child: TextField(
              controller: etUsername,
              decoration: InputDecoration(
                hintText: 'Input Username'
              ),
            ),
          ),

          RaisedButton(
            color: Colors.pinkAccent,
            textColor: Colors.white,
            onPressed: (){

              print("Data Input : " + etUsername.text);

            },child: Text('Submit'),
          )
        ],
      ),
    );
  }
}
