import 'package:flutter/material.dart';

class PageRegister extends StatefulWidget {
  @override
  _PageRegisterState createState() => _PageRegisterState();
}

class _PageRegisterState extends State<PageRegister> {



  TextEditingController etUsername = new TextEditingController();
  TextEditingController etPassword = new TextEditingController();
  TextEditingController etEmail = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Register'),
        backgroundColor: Colors.pinkAccent,
      ),

      //listview
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: etUsername,
              decoration: InputDecoration(
                hintText: 'Input Username'
              ),
            ),
          ),

          Container(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: etEmail,
              decoration: InputDecoration(
                  hintText: 'Input Email'
              ),
            ),
          ),

          Container(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: etPassword,
              //agar text nya di hide jadi bulat-bulat
              obscureText: true,
              decoration: InputDecoration(
                  hintText: 'Input Password'
              ),
            ),
          ),

          RaisedButton(
            color: Colors.pinkAccent,
            textColor: Colors.white,
            child: Text('Submit'),
            onPressed: (){
              //TASK : print semua data dari text field
              print("Data : " + etUsername.text + " Email : "+ etEmail.text + " Pass : " + etPassword.text);

              //tampilkan ke dialog
              return showDialog(context: context,
                builder: (context){
                  return AlertDialog(
                    content: Text('Hi, ' + etUsername.text),
                  );
                }
              );
            },
          )
        ],
      ),
    );
  }
}
