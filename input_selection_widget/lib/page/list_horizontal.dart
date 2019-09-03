import 'package:flutter/material.dart';

class ListHorizonal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Horizontal'),
        backgroundColor: Colors.pink,
      ),

      body: Container(
        margin: EdgeInsets.symmetric(vertical :20.0),
        height: 200.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 160.0,
              color: Colors.red,
            ),

            Container(
              width: 160.0,
              color: Colors.blueGrey,
            ),

            Container(
              width: 160.0,
              color: Colors.yellow,
            ),
            Container(
              width: 160.0,
              color: Colors.orange,
            ),
            Container(
              width: 160.0,
              color: Colors.green,
            ),


          ],
        ),
      ),
    );
  }
}
