import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    int _current = 0;
    // TODO: implement build
    return MaterialApp(
        title: "myappdemo",
        home: Scaffold(
          appBar: AppBar(
            title: Text("bottom navigation"),
            backgroundColor: Colors.deepPurple,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.alarm),
                onPressed: _onClickalarm,
              ),
              IconButton(
                icon: Icon(Icons.print),
                onPressed: _onClickPrint,
              )
            ],
          ),
          body: Container(
            color: Colors.lightBlueAccent,
            child: 
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("ali jasim", style: TextStyle(
                        fontSize: 32.8,
                        color: Colors.white70,
                      ),),
                      InkWell(
                        child:  Text("ali jasim", style: TextStyle(
                        fontSize: 32.8,
                        color: Colors.amberAccent.shade50,
                      )),
                      onDoubleTap: () => debugPrint(" double tap"),
                      )
                    ],
                  )
                )
            ),
          ),
        );
  }

  void _onClickalarm() {
    debugPrint(" hello alarm");
  }

  void _onClickPrint() {
    debugPrint(" hello print");
  }
}
