import 'package:flutter/material.dart';
import 'Models/circle.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Period extends StatefulWidget {
  @override
  _PeriodState createState() => _PeriodState();
}

class _PeriodState extends State<Period> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height *0.6,
              width: MediaQuery.of(context).size.width *0.8,
              decoration: BoxDecoration(
                  borderRadius: new BorderRadius.circular(25.0),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.1, 0.6],
                      colors: [ Colors.white,Colors.cyan[100]])
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20),
                  Text("Maya kapoor",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 30),),
                  Text("Age 23",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 25),),
                  RadialProgress(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                    Row(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: new BorderRadius.circular(50.0),
                          child: Container(
                            color: Colors.green,
                            height: 20,
                            width: 40,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text("Fertile window")

                      ],
                    ),

                      Row(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: new BorderRadius.circular(50.0),
                            child: Container(
                              color: Colors.red,
                              height: 20,
                              width: 40,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text("Menstruation")
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                    Row(
                      children: <Widget>[

                        Text("")

                      ],
                    ),

                      Row(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: new BorderRadius.circular(50.0),
                            child: Container(
                              color: Colors.blue,
                              height: 20,
                              width: 40,
                            ),
                          ),
                          SizedBox(width: 5),
                          Text("No Menstruation")

                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),

            Text("Next Fertile Window in 23 Days",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 18)),
            SizedBox(height: 15),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(""),
                LinearPercentIndicator(
                  width: MediaQuery.of(context).size.width *0.6,
                  animation: true,
                  lineHeight: 12.0,
                  animationDuration: 1500,
                  percent: 0.4,
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  progressColor: Colors.green,
                  backgroundColor: Colors.black26,
                ),
              ],
            ),
            SizedBox(height: 15),
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text("Back"),
              onPressed: (){},
            )
          ],
        ),
      ),
    );
  }
}
