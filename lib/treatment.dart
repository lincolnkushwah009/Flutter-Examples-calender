import 'package:flutter/material.dart';

class Treatment extends StatefulWidget {
  @override
  _TreatmentState createState() => _TreatmentState();
}


class _TreatmentState extends State<Treatment> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        appBar: AppBar(
          title: Text("Treatment"),
        ),
        body:Center(
          child: Column(
            children: <Widget>[


              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.black54,
                          blurRadius: 4.0,
                          offset: Offset(0.0, 0.75)
                      )
                    ],
        ),
                child:Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.alarm),
                      title: Text("Adjust your device setting for more reliable reminder "),
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(0,0,20,10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(""),
                          Row(

                            children: <Widget>[
                             Text("Close",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 16),),
                             SizedBox(
                               width: 10,
                             ),
                             Text("Learn More",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 16),),
                            ],
                          )
                        ],
                      ),
                    )

                  ],
                ) ,
              )

            ],
          ),
        ) ,
      ),
    );
  }
}
