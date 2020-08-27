import 'package:flutter/material.dart';

class FoodResults extends StatefulWidget {
  @override
  _FoodResultsState createState() => _FoodResultsState();
}

class _FoodResultsState extends State<FoodResults> {
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
                  Text("Results\n(High nutrient value food)",style: TextStyle(color: Colors.blue[800],fontWeight: FontWeight.bold,fontSize: 15)),
                  Icon(Icons.info,color: Colors.blue[800],)
                ],),
            ),

            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[


                Container(
                  width: MediaQuery.of(context).size.width *0.3,

                  decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(5.0),

                      color: Colors.blue,
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
                    padding: const EdgeInsets.fromLTRB(10,5,10,5),
                    child: Text ("Protein Food",style: TextStyle(color: Colors.white,fontSize: 11),),
                  ),
                ),


                Container(
                  width: MediaQuery.of(context).size.width *0.6,
                  decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(5.0),

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
                    padding: const EdgeInsets.fromLTRB(10,2,10,2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text ("Gram, Lentil",style: TextStyle(color: Colors.blue,fontSize: 12),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            color: Colors.blue,
                            width: 1.5,
                            height: 20,
                          ),
                       Padding(
                         padding: const EdgeInsets.fromLTRB(15,2,15,2),

                         child: Container(

                           child: Text ("22 g",style: TextStyle(color: Colors.blue,fontSize: 12),textAlign: TextAlign.center,),

                         ),
                       )
                        ],
                      )
                      ],
                    ),
                  ),
                ),






              ],
            ),

            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[


                Container(
                  width: MediaQuery.of(context).size.width *0.3,

                  decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(5.0),

                      color: Colors.blue,
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
                    padding: const EdgeInsets.fromLTRB(10,5,10,5),
                    child: Text ("Protein Food",style: TextStyle(color: Colors.white,fontSize: 11),),
                  ),
                ),


                Container(
                  width: MediaQuery.of(context).size.width *0.6,
                  decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(5.0),

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
                    padding: const EdgeInsets.fromLTRB(10,2,10,2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text ("Gram, Lentil",style: TextStyle(color: Colors.blue,fontSize: 12),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              color: Colors.blue,
                              width: 1.5,
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15,2,15,2),

                              child: Container(

                                child: Text ("22 g",style: TextStyle(color: Colors.blue,fontSize: 12),textAlign: TextAlign.center,),

                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),






              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[


                Container(
                  width: MediaQuery.of(context).size.width *0.3,

                  decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(5.0),

                      color: Colors.blue,
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
                    padding: const EdgeInsets.fromLTRB(10,5,10,5),
                    child: Text ("Protein Food",style: TextStyle(color: Colors.white,fontSize: 11),),
                  ),
                ),


                Container(
                  width: MediaQuery.of(context).size.width *0.6,
                  decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(5.0),

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
                    padding: const EdgeInsets.fromLTRB(10,2,10,2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text ("Gram, Lentil",style: TextStyle(color: Colors.blue,fontSize: 12),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              color: Colors.blue,
                              width: 1.5,
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15,2,15,2),

                              child: Container(

                                child: Text ("22 g",style: TextStyle(color: Colors.blue,fontSize: 12),textAlign: TextAlign.center,),

                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),






              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[


                Container(
                  width: MediaQuery.of(context).size.width *0.3,

                  decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(5.0),

                      color: Colors.blue,
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
                    padding: const EdgeInsets.fromLTRB(10,5,10,5),
                    child: Text ("Protein Food",style: TextStyle(color: Colors.white,fontSize: 11),),
                  ),
                ),


                Container(
                  width: MediaQuery.of(context).size.width *0.6,
                  decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(5.0),

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
                    padding: const EdgeInsets.fromLTRB(10,2,10,2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text ("Gram, Lentil",style: TextStyle(color: Colors.blue,fontSize: 12),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              color: Colors.blue,
                              width: 1.5,
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15,2,15,2),

                              child: Container(

                                child: Text ("22 g",style: TextStyle(color: Colors.blue,fontSize: 12),textAlign: TextAlign.center,),

                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),






              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[


                Container(
                  width: MediaQuery.of(context).size.width *0.3,

                  decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(5.0),

                      color: Colors.blue,
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
                    padding: const EdgeInsets.fromLTRB(10,5,10,5),
                    child: Text ("Protein Food",style: TextStyle(color: Colors.white,fontSize: 11),),
                  ),
                ),


                Container(
                  width: MediaQuery.of(context).size.width *0.6,
                  decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(5.0),

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
                    padding: const EdgeInsets.fromLTRB(10,2,10,2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text ("Gram, Lentil",style: TextStyle(color: Colors.blue,fontSize: 12),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              color: Colors.blue,
                              width: 1.5,
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15,2,15,2),

                              child: Container(

                                child: Text ("22 g",style: TextStyle(color: Colors.blue,fontSize: 12),textAlign: TextAlign.center,),

                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),






              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[


                Container(
                  width: MediaQuery.of(context).size.width *0.3,

                  decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(5.0),

                      color: Colors.blue,
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
                    padding: const EdgeInsets.fromLTRB(10,5,10,5),
                    child: Text ("Protein Food",style: TextStyle(color: Colors.white,fontSize: 11),),
                  ),
                ),


                Container(
                  width: MediaQuery.of(context).size.width *0.6,
                  decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(5.0),

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
                    padding: const EdgeInsets.fromLTRB(10,2,10,2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text ("Gram, Lentil",style: TextStyle(color: Colors.blue,fontSize: 12),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              color: Colors.blue,
                              width: 1.5,
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15,2,15,2),

                              child: Container(

                                child: Text ("22 g",style: TextStyle(color: Colors.blue,fontSize: 12),textAlign: TextAlign.center,),

                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),






              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[


                Container(
                  width: MediaQuery.of(context).size.width *0.3,

                  decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(5.0),

                      color: Colors.blue,
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
                    padding: const EdgeInsets.fromLTRB(10,5,10,5),
                    child: Text ("Protein Food",style: TextStyle(color: Colors.white,fontSize: 11),),
                  ),
                ),


                Container(
                  width: MediaQuery.of(context).size.width *0.6,
                  decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(5.0),

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
                    padding: const EdgeInsets.fromLTRB(10,2,10,2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text ("Gram, Lentil",style: TextStyle(color: Colors.blue,fontSize: 12),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              color: Colors.blue,
                              width: 1.5,
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15,2,15,2),

                              child: Container(

                                child: Text ("22 g",style: TextStyle(color: Colors.blue,fontSize: 12),textAlign: TextAlign.center,),

                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),






              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[


                Container(
                  width: MediaQuery.of(context).size.width *0.3,

                  decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(5.0),

                      color: Colors.blue,
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
                    padding: const EdgeInsets.fromLTRB(10,5,10,5),
                    child: Text ("Protein Food",style: TextStyle(color: Colors.white,fontSize: 11),),
                  ),
                ),


                Container(
                  width: MediaQuery.of(context).size.width *0.6,
                  decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(5.0),

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
                    padding: const EdgeInsets.fromLTRB(10,2,10,2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text ("Gram, Lentil",style: TextStyle(color: Colors.blue,fontSize: 12),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              color: Colors.blue,
                              width: 1.5,
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15,2,15,2),

                              child: Container(

                                child: Text ("22 g",style: TextStyle(color: Colors.blue,fontSize: 12),textAlign: TextAlign.center,),

                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),


              ],
            ),



          ],
        ),
      ),
    );

  }
}
