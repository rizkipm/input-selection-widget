import 'package:flutter/material.dart';
import 'detail_register.dart';

class PageRegister extends StatefulWidget {
  @override
  _PageRegisterState createState() => _PageRegisterState();
}

class _PageRegisterState extends State<PageRegister> {



  TextEditingController etUsername = new TextEditingController();
  TextEditingController etPassword = new TextEditingController();
  TextEditingController etEmail = new TextEditingController();

  // Initialise outside the build method
  FocusNode nodeOne = FocusNode();
  FocusNode nodeTwo = FocusNode();
  FocusNode nodeThree = FocusNode();

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
            child: TextFormField(
              focusNode: nodeOne,
              autofocus: true,
              controller: etUsername,
              decoration: InputDecoration(
                hintText: 'Input Username'
              ),
              onFieldSubmitted: (v){
                FocusScope.of(context).requestFocus(nodeTwo);
              },
            ),
          ),

          Container(
            padding: EdgeInsets.all(8.0),
            child: TextFormField(
              focusNode: nodeTwo,
              autofocus: true,
              controller: etEmail,
              decoration: InputDecoration(
                  hintText: 'Input Email'
              ),
              onFieldSubmitted: (v){
                FocusScope.of(context).requestFocus(nodeThree);
              },
            ),
          ),

          Container(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              autofocus: true,
              focusNode: nodeThree,
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

              FocusScope.of(context).requestFocus(nodeTwo);
              //tampilkan ke dialog
              //TASK Tampilkan ketiga datanya ke dalam alert dialof
//              return showDialog(context: context,
//                builder: (context){
//                  return AlertDialog(
//                    content: Text('Hi, ' + etUsername.text),
//                  );
//                }
//              );

            //passing value
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailRegister(
                nUser: etUsername.text,
                nEmail: etEmail.text,
                nPassword: etPassword.text,
              )));
            },
          )
        ],
      ),
    );
  }
}
