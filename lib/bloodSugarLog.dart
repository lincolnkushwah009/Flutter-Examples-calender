import 'package:flutter/material.dart';

class BloodSugarLog extends StatefulWidget {
  @override
  _BloodSugarLogState createState() => _BloodSugarLogState();
}

class _BloodSugarLogState extends State<BloodSugarLog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Center(
        child: Column(
          children: <Widget>[

            Container(

              height: 100,
              decoration: new BoxDecoration(
                  color: Colors.grey,
                  borderRadius: new BorderRadius.only(
                     bottomLeft: const Radius.circular(40.0),
                    bottomRight: const Radius.circular(40.0),
                  ),
              ),
child: Padding(
  padding: const EdgeInsets.fromLTRB(40,20,40,20),
  child:   Card(
    elevation: 5,
    color: Colors.white,
    child: Center(
      child: ListTile(
        title: Text("20, Sept, 2020"),
        trailing: Icon(Icons.calendar_today),

      ),
    ),
  ),
),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new DropdownButton<String>(
                  items: <String>['Before Breakfast', 'After Breakfast',].map((String value) {
                    return new DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {},
                  hint:Text("Select") ,

                ),

                Text("08:32am")
              ],
            ),

            Container(
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
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ButtonTheme(
                  minWidth: 30,
                  child: RaisedButton(
                    onPressed: (){},
                    color: Colors.blue,
                    child: Icon(Icons.add,color: Colors.white,),
                  ),
                ),
                SizedBox(width: 20,),
                ButtonTheme(
                    minWidth: 30,
                  child: RaisedButton(
                    onPressed: (){},
                    color: Colors.blue,
                    child: Icon(Icons.remove,color: Colors.white,),
                  ),
                )
              ],
            ),

          ],
        ),
      ),

    );
  }
}
