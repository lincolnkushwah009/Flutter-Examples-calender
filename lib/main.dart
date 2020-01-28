//import 'package:calender_check/example.dart';
//import 'package:flutter/material.dart';
//
//void main() {
//  runApp(new MaterialApp(
//    debugShowCheckedModeBanner: false,
//    theme: new ThemeData(
//      primaryColor: const Color(0xFF02BB9F),
//      primaryColorDark: const Color(0xFF167F67),
//      accentColor: const Color(0xFF167F67),
//    ),
//    home: SafeArea(
//      child: CalendarPage2(),
//    ),
//  ));
//}
//



import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'example.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _showcontent() {
    showDialog<Null>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return ClipRRect(

          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
          child: AlertDialog(
            actions: <Widget>[
              Container(
                height: 400,
                width: 300,
                child: CalendarPage2(),
              )
            ],
          ),
        );

      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'Push the button to show a Dialog:',
            ),
            new RaisedButton(onPressed: _showcontent, color: Colors.blueAccent,
              child:
              new Text('Click here', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}