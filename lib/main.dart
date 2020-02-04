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



import 'package:calender_check/track.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'cards.dart';

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



    showDialog<Null>
      (barrierDismissible: false,

      context: context,
      builder: (BuildContext context) {
        return ClipRRect(

          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
          child: AlertDialog(
            backgroundColor: Colors.transparent,
            actions: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(15)),


                child: Container(
                  color: Colors.white,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    child: Column(

                      children: <Widget>[


                        Container(
                          alignment: Alignment.center,
                          color: Colors.red,
                          child: Text("Delivery Date :2020-02-05",style: TextStyle(color: Colors.white,fontSize: 18),),
                          height: 30,
                          width: 400,
                        ),
                        SizedBox(height: 10),

                        Text("Select Preffered Delivery Date",style: TextStyle(color: Colors.grey,fontSize: 18),),
                        SizedBox(height: 10),

                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          child: Container(
                            alignment: Alignment.center,
                            height: 20,
                            width: 100,
                            color: Colors.red,
                            child: Text("2020-02-05",style: TextStyle(fontSize: 16,color: Colors.white),),
                          ),
                        ),
                        SizedBox(height: 10),

                        Container(
                          height: 300,
                          width: 300,
                          child: CalendarPage2(),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(18.0),
                              ),
                              onPressed: (){},
                              child: Text("Skip"),
                            ),
                            RaisedButton(
                              color: Colors.red,
                              shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(18.0),
                              ),
                              onPressed: (){},
                              child: Text("Confirm"),
                            )
                          ],
                        ),
                        SizedBox(height: 5,)
                      ],
                    ),
                  ),
                ),
              ),



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

            new RaisedButton(onPressed: _showcontent, color: Colors.blueAccent,
              child:
              new Text('Click here', style: TextStyle(color: Colors.white)),
            ),

            RaisedButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Cards()),
                );
              },
              child: Text(
                "Card"
              ),
            ),
            RaisedButton(color: Colors.red,
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Track()),
                );
              },
              child: Text(
                  "Track order"
              ),
            )
          ],
        ),
      ),
    );
  }
}