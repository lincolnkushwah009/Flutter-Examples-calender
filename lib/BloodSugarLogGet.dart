import 'package:flutter/material.dart';

class BloodSugarLogGet extends StatefulWidget {
  @override
  _BloodSugarLogGetState createState() => _BloodSugarLogGetState();
}

class _BloodSugarLogGetState extends State<BloodSugarLogGet> {
  final items = List<String>.generate(5, (i) => "Item $i");


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 5),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey,

              ),
              width: double.infinity,
              child: ListTile(
                title: Text("20, Sept, 2020"),
              ),
            ),
       Expanded(
         child:  ListView.builder(
           itemCount: items.length,
           itemBuilder: (context, index) {
             return  Container(
               child:  Column(children: <Widget>[
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: <Widget>[

                     Container(
                       child: Row(
                         children: <Widget>[
                           Text("Glucose",style: TextStyle(color: Colors.blue),),
                           Card(elevation: 4, child: Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Text("140"),
                           ),),
                           Text("mg/dL",style: TextStyle(color: Colors.black26),),
                         ],
                       ),
                     ),
                     Container(
                       child: Row(
                         children: <Widget>[
                           Text("Insulin",style: TextStyle(color: Colors.blue),),
                           Card(elevation: 4, child: Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Text("110"),
                           ),),
                           Text("mg/dL",style: TextStyle(color: Colors.black26),),
                         ],
                       ),
                     ),


                   ],
                 ),
                 SizedBox(
                   height: 10,
                 ),
                 Padding(
                   padding: const EdgeInsets.all(18.0),
                   child: Container(
                     height: 2,
                     color:Colors.blue ,
                     width: double.infinity,
                   ),
                 )
               ],),
             );
           },
         ),
       ),



            SizedBox(height: 5),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey,

              ),
              width: double.infinity,
              child: ListTile(
                title: Text("20, Sept, 2020"),
              ),
            ),
            Expanded(
              child:  ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return  Container(
                    child:  Column(children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[

                          Container(
                            child: Row(
                              children: <Widget>[
                                Text("Glucose",style: TextStyle(color: Colors.blue),),
                                Card(elevation: 4, child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("140"),
                                ),),
                                Text("mg/dL",style: TextStyle(color: Colors.black26),),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Text("Insulin",style: TextStyle(color: Colors.blue),),
                                Card(elevation: 4, child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("110"),
                                ),),
                                Text("mg/dL",style: TextStyle(color: Colors.black26),),
                              ],
                            ),
                          ),


                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Container(
                          height: 2,
                          color:Colors.blue ,
                          width: double.infinity,
                        ),
                      )
                    ],),
                  );
                },
              ),
            ),
          ],
        ),
      ),

    );
  }
}
