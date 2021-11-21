import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(child: Text("This app is developed by Mr. Awneesh Shrestha.", 
            style: TextStyle(fontSize: 30),),),
          ),
          // ignore: deprecated_member_use
          RaisedButton(onPressed: (){
            Navigator.pop(context);
          },
          child: Text("Back"),
          )
        ],

      ),

    );
  }
}