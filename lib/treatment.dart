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
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text("ADD"),
        ),

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
              ),

              SizedBox(height: 20),

              Card(
                elevation: 5,
                child:Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[

                      Row(
                        children: <Widget>[
                          Icon(Icons.alarm),
                          SizedBox(width: 20,),
                          Text("Capsule"),
                        ],
                      ),
                      SizedBox(height: 10,),

                      Row(
                        children: <Widget>[
                          Text("2 times daily-08:00 and 11:00"),

                          SizedBox(width: 20,),

                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: <Widget>[
                          Icon(Icons.calendar_today),
                          SizedBox(width: 20,),
                          Text("Until 9/6",style: TextStyle(color: Colors.black26),),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(""),
                          Icon(Icons.add_alert,color: Colors.green,),
                        ],
                      )



                    ],
                  ),
                ) ,
              )

            ],
          ),
        ) ,
      ),
    );
  }
}
