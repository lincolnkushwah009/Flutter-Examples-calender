import 'package:flutter/material.dart';

class MacroNutrients extends StatefulWidget {
  @override
  _MacroNutrientsState createState() => _MacroNutrientsState();
}

class _MacroNutrientsState extends State<MacroNutrients> {
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
                  Text("Results (Macro Nutrients)",style: TextStyle(color: Colors.blue[800],fontWeight: FontWeight.bold,fontSize: 15)),
                  Icon(Icons.info,color: Colors.blue[800],)
                ],),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[

                ClipRRect(
                  borderRadius: new BorderRadius.circular(5.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width *0.3,

                    decoration: BoxDecoration(
                        color: Colors.blue[900],
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
                      child: Text ("Vegetarian Meal",style: TextStyle(color: Colors.white,fontSize: 11),),
                    ),
                  ),
                ),

                ClipRRect(
                  borderRadius: new BorderRadius.circular(5.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width *0.6,
                    decoration: BoxDecoration(
                        color: Colors.blue[900],
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
                          Text ("Amount/portion",style: TextStyle(color: Colors.white,fontSize: 12),),
                          Container(
                            color: Colors.white,
                            width: 1.5,
                            height: 20,
                          ),
                          Text ("No of portion",style: TextStyle(color: Colors.white,fontSize: 12),),
                        ],
                      ),
                    ),
                  ),
                ),




              ],
            ),

            SizedBox(height: 5),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[


                Container(
                    width: MediaQuery.of(context).size.width *0.3,

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
                      padding: const EdgeInsets.fromLTRB(10,5,10,5),
                      child: Text ("Cereals & milets",style: TextStyle(color: Colors.blue,fontSize: 11),),
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
                          Text ("30",style: TextStyle(color: Colors.blue,fontSize: 12),),
                          Container(
                            color: Colors.blue,
                            width: 1.5,
                            height: 20,
                          ),
                          Container(

                              child: Text ("-",style: TextStyle(color: Colors.blue,fontSize: 12),textAlign: TextAlign.center,),

                          )
                        ],
                      ),
                    ),
                  ),






              ],
            ),
            SizedBox(height: 5),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[


                Container(
                  width: MediaQuery.of(context).size.width *0.3,

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
                    padding: const EdgeInsets.fromLTRB(10,5,10,5),
                    child: Text ("Cereals & milets",style: TextStyle(color: Colors.blue,fontSize: 11),),
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
                        Text ("30",style: TextStyle(color: Colors.blue,fontSize: 12),),
                        Container(
                          color: Colors.blue,
                          width: 1.5,
                          height: 20,
                        ),
                        Container(

                          child: Text ("-",style: TextStyle(color: Colors.blue,fontSize: 12),textAlign: TextAlign.center,),

                        )
                      ],
                    ),
                  ),
                ),






              ],
            ),

            SizedBox(height: 5),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[


                Container(
                  width: MediaQuery.of(context).size.width *0.3,

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
                    padding: const EdgeInsets.fromLTRB(10,5,10,5),
                    child: Text ("Cereals & milets",style: TextStyle(color: Colors.blue,fontSize: 11),),
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
                        Text ("30",style: TextStyle(color: Colors.blue,fontSize: 12),),
                        Container(
                          color: Colors.blue,
                          width: 1.5,
                          height: 20,
                        ),
                        Container(

                          child: Text ("-",style: TextStyle(color: Colors.blue,fontSize: 12),textAlign: TextAlign.center,),

                        )
                      ],
                    ),
                  ),
                ),






              ],
            ),

            SizedBox(height: 5),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[


                Container(
                  width: MediaQuery.of(context).size.width *0.3,

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
                    padding: const EdgeInsets.fromLTRB(10,5,10,5),
                    child: Text ("Cereals & milets",style: TextStyle(color: Colors.blue,fontSize: 11),),
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
                        Text ("30",style: TextStyle(color: Colors.blue,fontSize: 12),),
                        Container(
                          color: Colors.blue,
                          width: 1.5,
                          height: 20,
                        ),
                        Container(

                          child: Text ("-",style: TextStyle(color: Colors.blue,fontSize: 12),textAlign: TextAlign.center,),

                        )
                      ],
                    ),
                  ),
                ),






              ],
            ),

            SizedBox(height: 5),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[


                Container(
                  width: MediaQuery.of(context).size.width *0.3,

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
                    padding: const EdgeInsets.fromLTRB(10,5,10,5),
                    child: Text ("Cereals & milets",style: TextStyle(color: Colors.blue,fontSize: 11),),
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
                        Text ("30",style: TextStyle(color: Colors.blue,fontSize: 12),),
                        Container(
                          color: Colors.blue,
                          width: 1.5,
                          height: 20,
                        ),
                        Container(

                          child: Text ("-",style: TextStyle(color: Colors.blue,fontSize: 12),textAlign: TextAlign.center,),

                        )
                      ],
                    ),
                  ),
                ),






              ],
            ),
            SizedBox(height: 5),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[


                Container(
                  width: MediaQuery.of(context).size.width *0.3,

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
                    padding: const EdgeInsets.fromLTRB(10,5,10,5),
                    child: Text ("Cereals & milets",style: TextStyle(color: Colors.blue,fontSize: 11),),
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
                        Text ("30",style: TextStyle(color: Colors.blue,fontSize: 12),),
                        Container(
                          color: Colors.blue,
                          width: 1.5,
                          height: 20,
                        ),
                        Container(

                          child: Text ("-",style: TextStyle(color: Colors.blue,fontSize: 12),textAlign: TextAlign.center,),

                        )
                      ],
                    ),
                  ),
                ),






              ],
            ),

            SizedBox(height: 5),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[


                Container(
                  width: MediaQuery.of(context).size.width *0.3,

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
                    padding: const EdgeInsets.fromLTRB(10,5,10,5),
                    child: Text ("Cereals & milets",style: TextStyle(color: Colors.blue,fontSize: 11),),
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
                        Text ("30",style: TextStyle(color: Colors.blue,fontSize: 12),),
                        Container(
                          color: Colors.blue,
                          width: 1.5,
                          height: 20,
                        ),
                        Container(

                          child: Text ("-",style: TextStyle(color: Colors.blue,fontSize: 12),textAlign: TextAlign.center,),

                        )
                      ],
                    ),
                  ),
                ),






              ],
            ),

            SizedBox(height: 5),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[


                Container(
                  width: MediaQuery.of(context).size.width *0.3,

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
                    padding: const EdgeInsets.fromLTRB(10,5,10,5),
                    child: Text ("Cereals & milets",style: TextStyle(color: Colors.blue,fontSize: 11),),
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
                        Text ("30",style: TextStyle(color: Colors.blue,fontSize: 12),),
                        Container(
                          color: Colors.blue,
                          width: 1.5,
                          height: 20,
                        ),
                        Container(

                          child: Text ("-",style: TextStyle(color: Colors.blue,fontSize: 12),textAlign: TextAlign.center,),

                        )
                      ],
                    ),
                  ),
                ),






              ],
            ),

            SizedBox(height: 5),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[


                Container(
                  width: MediaQuery.of(context).size.width *0.3,

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
                    padding: const EdgeInsets.fromLTRB(10,5,10,5),
                    child: Text ("Cereals & milets",style: TextStyle(color: Colors.blue,fontSize: 11),),
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
                        Text ("30",style: TextStyle(color: Colors.blue,fontSize: 12),),
                        Container(
                          color: Colors.blue,
                          width: 1.5,
                          height: 20,
                        ),
                        Container(

                          child: Text ("-",style: TextStyle(color: Colors.blue,fontSize: 12),textAlign: TextAlign.center,),

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
