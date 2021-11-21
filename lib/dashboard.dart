

import 'package:flutter/material.dart';
import 'package:ms_word/about.dart';
import 'data.dart';

class dashboard extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: Container(
                color: Colors.red,
                child: Center(
                  child: Text('Ms Word Guide',
                  style: TextStyle(
                    color: Colors.black
                  ),
                  ),
                ),
                ),
            ),
            ListTile(
              onTap: (){
                Navigator.pop(context);
              },
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context){
                    return About();
                  } 
                ));
              },
              leading: Icon(Icons.info),
              title: Text("About"),
            )
          ],
        ),
      ),
        appBar: AppBar(
          title: Text("Ms Word"),
          actions: <Widget>[
            IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(
              builder: (context){
                return About();
                }
                )
                );
                },
                iconSize: 26.0, 
                icon: Icon(Icons.info)
                )
          ],
       ),
        body: ListView.separated(
          separatorBuilder: (context, index){
            return Divider(
              thickness: 2.0,
            );
          },
          itemCount: data.length,
          itemBuilder: (context, index){
          return ListTile(
              leading: CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.red,
                child: Text('${index + 1}'),
              ),
              title: Text(data[index]["key"]),
              subtitle: Text(data[index]["use"]),
            );
        })
        );
  }
}
// 