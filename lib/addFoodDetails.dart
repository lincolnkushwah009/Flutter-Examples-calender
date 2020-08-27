import 'package:flutter/material.dart';

class AddFoodDetails extends StatefulWidget {
  @override
  _AddFoodDetailsState createState() => _AddFoodDetailsState();
}

class _AddFoodDetailsState extends State<AddFoodDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height *0.3,
              width: MediaQuery.of(context).size.width *0.9,
              decoration: BoxDecoration(
                  borderRadius: new BorderRadius.circular(25.0),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.1, 0.6],
                      colors: [ Colors.white,Colors.cyan[100]])
              ),

              child: Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 20),
                    Text("Macro Nurtients",style: TextStyle(color: Colors.blue,fontSize: 25,fontWeight: FontWeight.bold),),

                  ],
                ),
              ),

            ),

            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width *0.4,
                  decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(25.0),
                      gradient: LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                          stops: [0.2, 0.9],
                          colors: [ Colors.white,Colors.cyan[100]])
                  ),
                ),
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width *0.4,
                  decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(25.0),
                      gradient: LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                          stops: [0.2, 0.9],
                          colors: [ Colors.white,Colors.cyan[100]])
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width *0.4,
                  decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(25.0),
                      gradient: LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                          stops: [0.2, 0.9],
                          colors: [ Colors.white,Colors.cyan[100]])
                  ),
                ),
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width *0.4,
                  decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(25.0),
                      gradient: LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                          stops: [0.2, 0.9],
                          colors: [ Colors.white,Colors.cyan[100]])
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
               Text(""),
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width *0.4,
                  decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(25.0),
                      gradient: LinearGradient(
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                          stops: [0.2, 0.9],
                          colors: [ Colors.white,Colors.cyan[100]])
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text("Add Details"),
              onPressed: (){},
            ),
          ],
        ),
      ),

    );
  }
}
