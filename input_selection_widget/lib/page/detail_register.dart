import 'package:flutter/material.dart';

class DetailRegister extends StatefulWidget {

  String nUser;
  String nPassword, nEmail;

  //constructor
  DetailRegister({this.nUser, this.nEmail, this.nPassword});

  @override
  _DetailRegisterState createState() => _DetailRegisterState();
}

class _DetailRegisterState extends State<DetailRegister> {

  //
  @override
  void setState(fn) {
    // TODO: implement setState
    super.setState(fn);
    print("Data Username ${widget.nUser}");
    print("Data Email ${widget.nEmail}");
    print("Data Password ${widget.nPassword}");

  }


  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}
