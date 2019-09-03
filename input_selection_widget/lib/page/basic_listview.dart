import 'package:flutter/material.dart';

class BasicListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic Listview'),
        backgroundColor: Colors.pink,
      ),

      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(Icons.access_alarm),
              title: Text('Alarm'),
            ),
          ),

          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Phone'),
          ),

          ListTile(
            leading: Icon(Icons.camera),
            title: Text('Camera'),
          )
        ],
      ),
    );
  }
}
