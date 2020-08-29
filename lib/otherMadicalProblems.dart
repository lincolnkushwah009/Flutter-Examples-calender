import 'package:flutter/material.dart';

class MedicalProblems extends StatefulWidget {
  @override
  _MedicalProblemsState createState() => _MedicalProblemsState();
}

class _MedicalProblemsState extends State<MedicalProblems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width *0.9,
              height: MediaQuery.of(context).size.height *0.8,


              decoration: BoxDecoration(
                  borderRadius: new BorderRadius.circular(5.0),

                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.1, 0.6],
                    colors: [ Colors.white,Colors.cyan[100]]),
                  boxShadow: [BoxShadow(
                    color: Colors.grey,
                    blurRadius: 7.0,
                  ),],

              ),
              child: Center(
                child: Column(
                 children: <Widget>[
                   SizedBox(height: 20),

                   Text("Heart",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.blue),),

                   Card(
                     elevation: 5,
                     child: Column(
                       children: <Widget>[
                         ListTile(
                           leading: Container(
                             decoration: BoxDecoration(
                               borderRadius: new BorderRadius.circular(50.0),
                               color: Colors.blue,

                             ),
                             height: 15,
                             width: 15,
                           ),
                           title: Text("Hypertension (High BP)",style: TextStyle(fontSize: 14,color: Colors.blue),),
                         ),
                         ListTile(
                           leading: Container(
                             decoration: BoxDecoration(
                               borderRadius: new BorderRadius.circular(50.0),
                               color: Colors.blue,

                             ),
                             height: 15,
                             width: 15,
                           ),
                           title: Text("Hypertension (High BP)",style: TextStyle(fontSize: 14,color: Colors.blue),),
                         ),
                         ListTile(
                           leading: Container(
                             decoration: BoxDecoration(
                               borderRadius: new BorderRadius.circular(50.0),
                               color: Colors.blue,

                             ),
                             height: 15,
                             width: 15,
                           ),
                           title: Text("Hypertension (High BP)",style: TextStyle(fontSize: 14,color: Colors.blue),),
                         ),

                       ],
                     ),
                   ),

                   SizedBox(height: 15),
                   Text("Endocrinology",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.blue),),
                   Card(
                     elevation: 5,
                     child: Column(
                       children: <Widget>[

                         ListTile(
                           leading: Container(
                             decoration: BoxDecoration(
                               borderRadius: new BorderRadius.circular(50.0),
                               color: Colors.blue,

                             ),
                             height: 15,
                             width: 15,
                           ),
                           title: Text("Diabetes Type 1",style: TextStyle(fontSize: 14,color: Colors.blue),),
                         ),

                       ],
                     ),
                   ),

                   SizedBox(height: 15),
                   Text("Brain",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.blue),),
                   Card(
                     elevation: 5,
                     child: Column(
                       children: <Widget>[

                         ListTile(
                           leading: Container(
                             decoration: BoxDecoration(
                               borderRadius: new BorderRadius.circular(50.0),
                               color: Colors.blue,

                             ),
                             height: 15,
                             width: 15,
                           ),
                           title: Text("Migraine",style: TextStyle(fontSize: 14,color: Colors.blue),),
                         ),

                       ],
                     ),
                   ),

                   SizedBox(height: 15),
                   Text("Skin",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.blue),),
                   Card(
                     elevation: 5,
                     child: Column(
                       children: <Widget>[

                         ListTile(
                           leading: Container(
                             decoration: BoxDecoration(
                               borderRadius: new BorderRadius.circular(50.0),
                               color: Colors.blue,

                             ),
                             height: 15,
                             width: 15,
                           ),
                           title: Text("_________",style: TextStyle(fontSize: 14,color: Colors.blue),),
                         ),

                       ],
                     ),
                   ),


                 ],
                ),
              ),
            ),
            SizedBox(height: 20,),

            RaisedButton(
              onPressed: (){},
              color: Colors.blue,
              textColor: Colors.white,
              child: Text("Add details"),
            )
          ],
        ),
      ),

    );
  }
}
