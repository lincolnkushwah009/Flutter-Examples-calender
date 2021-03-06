import 'package:calender_check/Add-Medicine.dart';
import 'package:calender_check/BloodSugarLogGet.dart';
import 'package:calender_check/Food-Results.dart';
import 'package:calender_check/Macro-Nutrients-Two.dart';
import 'package:calender_check/SelectCard.dart';
import 'package:calender_check/SelectMedicine.dart';
import 'package:calender_check/addFoodDetails.dart';
import 'package:calender_check/bloodSugarLog.dart';
import 'package:calender_check/chat.dart';
import 'package:calender_check/dietPersonalizer.dart';
import 'package:calender_check/list1.dart';
import 'package:calender_check/logindesign.dart';
 import 'package:calender_check/new.dart';
import 'package:calender_check/newDesign.dart';
import 'package:calender_check/otherMadicalProblems.dart';
import 'package:calender_check/period.dart';
import 'package:calender_check/periodInformer.dart';
 import 'package:calender_check/track.dart';
import 'package:calender_check/treatment.dart';
 import 'package:calender_check/win.dart';
 import 'package:flutter/material.dart';
 import 'package:flutter/widgets.dart';
 import 'cards.dart';
 import 'package:calender_check/macro Nutrients.dart';
 import 'example.dart';
 import 'List 2.dart';
 import 'blogs.dart';
import 'Duration.dart';

 void main() => runApp(new MyApp());

 class MyApp extends StatelessWidget {
   // This widget is the root of your application.
   @override
   Widget build(BuildContext context) {
     return new MaterialApp(
       debugShowCheckedModeBanner: false,
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

                         Text("Select Preferred Delivery Date",style: TextStyle(color: Colors.grey,fontSize: 18),),
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
       body: new SingleChildScrollView(
         child:  Center(
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
               ),
               RaisedButton(color: Colors.pinkAccent,
                 onPressed: (){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => win()),
                   );
                 },
                 child: Text(
                     "C"
                 ),
               ),
               RaisedButton(color: Colors.green,
                 onPressed: (){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => New()),
                   );
                 },
                 child: Text(
                     "new"
                 ),
               ),
               RaisedButton(color: Colors.amberAccent,
                 onPressed: (){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => chat()),
                   );
                 },
                 child: Text(
                     "chat"
                 ),
               ),


               RaisedButton(color: Colors.brown,
                 onPressed: (){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => LoginScreen()),
                   );
                 },
                 child: Text(
                   "login design",style: TextStyle(color: Colors.white),
                 ),
               ),
               RaisedButton(color: Colors.brown,
                 onPressed: (){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => Design()),
                   );
                 },
                 child: Text(
                   "new design",style: TextStyle(color: Colors.white),
                 ),
               ),
               RaisedButton(color: Colors.black,
                 onPressed: (){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => Period()),
                   );
                 },
                 child: Text(
                   "Period",style: TextStyle(color: Colors.white),
                 ),
               ),

               RaisedButton(color: Colors. cyan,
                 onPressed: (){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => PeriodInformer()),
                   );
                 },
                 child: Text(
                   "Period-Informer",style: TextStyle(color: Colors.white),
                 ),
               ),
               RaisedButton(color: Colors. cyan,
                 onPressed: (){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => DietPersonalizer()),
                   );
                 },
                 child: Text(
                   "Diet Personalizer",style: TextStyle(color: Colors.white),
                 ),
               ),
               RaisedButton(
                 color: Colors. cyan[200],
                 onPressed: (){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => MacroNutrients()),
                   );
                 },
                 child: Text(
                   "Macro Nutrients",style: TextStyle(color: Colors.white),
                 ),
               ),
               RaisedButton(
                 color: Colors. cyan[600],
                 onPressed: (){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => FoodResults()),
                   );
                 },
                 child: Text(
                   "Food Results",style: TextStyle(color: Colors.white),
                 ),
               ),
               RaisedButton(
                 color: Colors. cyan[600],
                 onPressed: (){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => MacroNutrientsTwo()),
                   );
                 },
                 child: Text(
                   "Macro Nutrients 2",style: TextStyle(color: Colors.white),
                 ),
               ),
               RaisedButton(
                 color: Colors. cyan[600],
                 onPressed: (){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => AddFoodDetails()),
                   );
                 },
                 child: Text(
                   "Add Food Details",style: TextStyle(color: Colors.white),
                 ),
               ),
               RaisedButton(
                 color: Colors. cyan[600],
                 onPressed: (){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => ListOne()),
                   );
                 },
                 child: Text(
                   "List One",style: TextStyle(color: Colors.white),
                 ),
               ),
               RaisedButton(
                 color: Colors. cyan[600],
                 onPressed: (){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => ListTwo()),
                   );
                 },
                 child: Text(
                   "List Two",style: TextStyle(color: Colors.white),
                 ),
               ),
               RaisedButton(
                 color: Colors. red[600],
                 onPressed: (){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => Blog()),
                   );
                 },
                 child: Text(
                   "Blog",style: TextStyle(color: Colors.white),
                 ),
               ),
               RaisedButton(
                 color: Colors. blue[600],
                 onPressed: (){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => MedicalProblems()),
                   );
                 },
                 child: Text(
                   "Medical Problems",style: TextStyle(color: Colors.white),
                 ),
               ),
               Divider(
                 height: 10,
                 color: Colors.red,
               ),
               RaisedButton(
                 color: Colors. green[600],
                 onPressed: (){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => SelectMedicine()),
                   );
                 },
                 child: Text(
                   "Select Medicine",style: TextStyle(color: Colors.white),
                 ),
               ),
               RaisedButton(
                 color: Colors. black26,
                 onPressed: (){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => Duration()),
                   );
                 },
                 child: Text(
                   "Duration",style: TextStyle(color: Colors.white),
                 ),
               ),
               RaisedButton(
                 color: Colors. purple[800],
                 onPressed: (){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => AddMedicine()),
                   );
                 },
                 child: Text(
                   "Add Medicine",style: TextStyle(color: Colors.white),
                 ),
               ),
               RaisedButton(
                 color: Colors. purple,
                 onPressed: (){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => Treatment()),
                   );
                 },
                 child: Text(
                   "Treatment",style: TextStyle(color: Colors.white),
                 ),
               ),
               RaisedButton(
                 color: Colors. pinkAccent,
                 onPressed: (){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => SelectCard()),
                   );
                 },
                 child: Text(
                   "Select Card",style: TextStyle(color: Colors.white),
                 ),
               ),
               RaisedButton(
                 color: Colors. black,
                 onPressed: (){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => BloodSugarLog()),
                   );
                 },
                 child: Text(
                   "Blood Sugar Log",style: TextStyle(color: Colors.white),
                 ),
               ),
               RaisedButton(
                 color: Colors. black,
                 onPressed: (){
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => BloodSugarLogGet()),
                   );
                 },
                 child: Text(
                   "Blood Sugar Log Get",style: TextStyle(color: Colors.white),
                 ),
               ),

             ],
           ),
         ),
       )
     );
   }
 }



