
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'example.dart';


void main() => runApp(new win());

class win extends StatelessWidget {
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
        return  AlertDialog(

          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0),
          ),
//              backgroundColor: Colors.transparent,
            actions: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(30)),


                child: Container(
                  height: 200,
                  width: 300,
                  alignment: Alignment.center,
                  color: Colors.transparent,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    child: Column(

                      children: <Widget>[

                        Container(

                          child: Image.asset('assets/congrats.png'),
                        ),

                        Container(child: Text("You are Eligible for Reward",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 18),),),


                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            SizedBox(
                              width: 120,
                              child: RaisedButton(
                                color: Colors.grey,
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(18.0),
                                ),
                                onPressed: (){},
                                child: Text("Skip",style: TextStyle(color: Colors.white,),),
                              ),
                            ),
                            SizedBox(
                              width: 120,
                              child: RaisedButton(
                                color: Colors.red,
                                shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(18.0),
                                ),

                                onPressed: (){},
                                child: Center(child: Text("Clame Reward",)),
                              ),
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

          ],
        ),
      ),
    );
  }
}



/*

                        */