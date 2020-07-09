import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: _Home(),
    ));

class _Home extends StatefulWidget {
  @override
  __HomeState createState() => __HomeState();
}

class __HomeState extends State<_Home> {
  int playerLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text('E-vizit'),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: (){
              setState(() {
                playerLevel++;
              });
            },
            child: Icon(Icons.add),
            tooltip: 'Tap to level up',
            backgroundColor: Colors.grey),
        body: Padding(
          padding: EdgeInsets.fromLTRB(10, 40, 10, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.amber,
                radius: 55,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/avatar1.png'),
                  radius: 50.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text('Lv: ' + '$playerLevel',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.amber)),
              SizedBox(height: 10.0),
              Text(
                'Name',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              Text(
                'İslam YILMAZ',
                style:
                    TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'islamyilmaz@yahoo.com',
                    style: TextStyle(
                        color: Colors.amber, fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
