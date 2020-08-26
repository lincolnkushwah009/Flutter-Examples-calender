import 'package:flutter/material.dart';

class DietPersonalizer extends StatefulWidget {
  @override
  _DietPersonalizerState createState() => _DietPersonalizerState();
}

class _DietPersonalizerState extends State<DietPersonalizer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height *0.4,
              width: MediaQuery.of(context).size.width *1,
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
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(""),
                      RaisedButton(
                        onPressed: (){},
                        color: Colors.blue,
                        child: Text("Edit"),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      FlutterLogo(
                        size: 100,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,50,0,0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Maya Kapoor",style: TextStyle(color: Colors.black54,fontWeight: FontWeight.bold,fontSize: 15),),
                            Text("Female",style: TextStyle(color: Colors.black26,fontWeight: FontWeight.bold,fontSize: 13)),
                            Text("55 Kg",style: TextStyle(color: Colors.black26,fontWeight: FontWeight.bold,fontSize: 13)),
                            Text("Sedentary",style: TextStyle(color: Colors.black26,fontWeight: FontWeight.bold,fontSize: 13)),
                          ],
                        ),
                      )
                    ],
                  )

                ],
              ),



            ),
            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                Text("Results (RDA)",style: TextStyle(color: Colors.blue[800],fontWeight: FontWeight.bold,fontSize: 15)),
                  Icon(Icons.info,color: Colors.blue[800],)
              ],),
            ),


            Padding(
              padding: const EdgeInsets.fromLTRB(8,5,8,2),

              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                    boxShadow: [BoxShadow(
                      color: Colors.grey,
                      blurRadius: 7.0,
                    ),],
                    border: Border.all(
                        width: 1,
                        color: Colors.blue[800]
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10,0,10,0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Net energy (Kcal/d)"),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 30,
                            width: 2,
                            color: Colors.black26,
                          ),
                          SizedBox(width: 20,),
                          Text("1990"),
                          SizedBox(width: 20,),
                        ],
                      )
                    ],),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8,5,8,2),

              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(
                      color: Colors.grey,
                      blurRadius: 7.0,
                    ),],
                    border: Border.all(
                        width: 1,
                        color: Colors.blue[800]
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10,0,10,0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Net energy (Kcal/d)"),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 30,
                            width: 2,
                            color: Colors.black26,
                          ),
                          SizedBox(width: 20,),
                          Text("1990"),
                          SizedBox(width: 20,),
                        ],
                      )
                    ],),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8,5,8,2),

              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(
                      color: Colors.grey,
                      blurRadius: 7.0,
                    ),],
                    border: Border.all(
                        width: 1,
                        color: Colors.blue[800]
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10,0,10,0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Net energy (Kcal/d)"),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 30,
                            width: 2,
                            color: Colors.black26,
                          ),
                          SizedBox(width: 20,),
                          Text("1990"),
                          SizedBox(width: 20,),
                        ],
                      )
                    ],),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8,5,8,2),

              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(
                      color: Colors.grey,
                      blurRadius: 7.0,
                    ),],
                    border: Border.all(
                        width: 1,
                        color: Colors.blue[800]
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10,0,10,0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Net energy (Kcal/d)"),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 30,
                            width: 2,
                            color: Colors.black26,
                          ),
                          SizedBox(width: 20,),
                          Text("1990"),
                          SizedBox(width: 20,),
                        ],
                      )
                    ],),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8,5,8,2),

              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(
                      color: Colors.grey,
                      blurRadius: 7.0,
                    ),],
                    border: Border.all(
                        width: 1,
                        color: Colors.blue[800]
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10,0,10,0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Net energy (Kcal/d)"),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 30,
                            width: 2,
                            color: Colors.black26,
                          ),
                          SizedBox(width: 20,),
                          Text("1990"),
                          SizedBox(width: 20,),
                        ],
                      )
                    ],),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8,5,8,2),

              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(
                      color: Colors.grey,
                      blurRadius: 7.0,
                    ),],
                    border: Border.all(
                        width: 1,
                        color: Colors.blue[800]
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10,0,10,0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Net energy (Kcal/d)"),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 30,
                            width: 2,
                            color: Colors.black26,
                          ),
                          SizedBox(width: 20,),
                          Text("1990"),
                          SizedBox(width: 20,),
                        ],
                      )
                    ],),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8,5,8,2),

              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(
                      color: Colors.grey,
                      blurRadius: 7.0,
                    ),],
                    border: Border.all(
                        width: 1,
                        color: Colors.blue[800]
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10,0,10,0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Net energy (Kcal/d)"),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 30,
                            width: 2,
                            color: Colors.black26,
                          ),
                          SizedBox(width: 20,),
                          Text("1990"),
                          SizedBox(width: 20,),
                        ],
                      )
                    ],),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8,5,8,2),

              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [BoxShadow(
                      color: Colors.grey,
                      blurRadius: 7.0,
                    ),],
                    border: Border.all(
                        width: 1,
                        color: Colors.blue[800]
                    )
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10,0,10,0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Net energy (Kcal/d)"),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 30,
                            width: 2,
                            color: Colors.black26,
                          ),
                          SizedBox(width: 20,),
                          Text("1990"),
                          SizedBox(width: 20,),
                        ],
                      )
                    ],),
                ),
              ),
            ),

          ],
        ),
      ),
    );

  }
}
