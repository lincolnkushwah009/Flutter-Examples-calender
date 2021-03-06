import 'package:flutter/material.dart';


class Cards extends StatefulWidget {
  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Padding(
              padding: const EdgeInsets.fromLTRB(15,0,0,0),
              child: Text("Welcome ", style: TextStyle(fontSize: 25,
//                decoration: TextDecoration.underline,
//                decorationStyle: TextDecorationStyle.wavy,
              )),
            ),
            bottom: TabBar(
              labelColor: Colors.red,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(text: 'Invoice'),
                Tab(text: 'Transation History'),
              ],
            ),
          ),
          body: TabBarView(

            children: [
              FirstScreen(),
              SecondScreen(),

            ],
          ),
          bottomSheet:Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: <Widget>[
              Container(
//              alignment: Alignment.bottomLeft,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red
                ),
              padding: const EdgeInsets.fromLTRB(10,10,10,10),


                child:Text('Total Outstanding\n 1000',style: TextStyle(color: Colors.white),),
              ),
             Container(
               height: 50,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 color: Colors.black,
               ),
               child: FlatButton(
                 child: Text("Pay",style: TextStyle(color: Colors.red),),
               ),
             ),
            ],
          ),


         ),
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  final List<Widget> cards = List<Widget>.generate(8, (i)=>new mycard());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body:   Padding(
            padding: const EdgeInsets.fromLTRB(0,0,0,50),
            child: new Container(
                child: new ListView(
                  children: cards,
                )

            ),
          )
        )
    );
  }
}

class SecondScreen extends StatefulWidget {

  @override
  _SecondScreenState createState() => _SecondScreenState();
}
class _SecondScreenState extends State<SecondScreen> {

  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body:  SingleChildScrollView(
            child: Center(
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 20, 8, 0),
                  child:Column(
                    children: <Widget>[

                      Card(

                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,

                          children: <Widget>[
                            Text('aaa'),
                            Text('bbb'),
                            Column(
                              children: <Widget>[
                                Text('ccc'),
                                Text('2ccc'),

                              ],
                            )
                          ],
                        ),


                      ),


                      Card(
                        child: ListTile(
                          title: Text(" Booster Changes",style: TextStyle(fontWeight: FontWeight.bold),),
                          trailing: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: <Widget>[
                                Text("10:49 PM",style: TextStyle(color: Colors.grey),),
                                Text("Completed",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                              ],
                            ),
                          ),

                        ),
                      )

                    ],
                  )
              ),
            ),
          ),
        )
    );
  }
}



class mycard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 150,
            width: 350,
            child: Card(

              child:Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(topLeft: new Radius.circular(15),
                          bottomRight: new Radius.circular(15),
                        ),


                        child: Container(
                          height: 40,
                          width: 150,
                          color: Colors.grey[800],
                          child: Row(children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5,0,0,0),
                              child: Container(
                                height: 20,
                                child: Image.asset('assets/Sheet.png'),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(2,0,2,0),
                              child: Text("Invoice No:",style: TextStyle(color: Colors.white),),
                            ),

                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                height: 15,
                                width: 50,
                                color: Colors.white,
                                child: Center(
                                  child: Container(

                                      child: Text("INV-110",style: TextStyle(color: Colors.red, fontSize: 8),)),
                                ),
                              ),
                            )


                          ],),
                        ),
                      ),

                      ClipRRect(
                        borderRadius: BorderRadius.only(topRight: new Radius.circular(15),
                          bottomLeft: new Radius.circular(15),
                        ),

                        child: Container(
                          height: 40,
                          width: 150,
                          color: Colors.grey[800],
                          child: Row(children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5,0,0,0),
                              child: Container(
                                height: 20,
                                child: Image.asset('assets/calender.png'),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(2,0,2,0),
                              child: Text("Due Date:",style: TextStyle(color: Colors.white),),
                            ),

                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                height: 15,
                                width: 50,
                                color: Colors.white,
                                child: Center(
                                  child: Container(
                                      child: Text("24 Feb 2020",style: TextStyle(color: Colors.red, fontSize: 8),)),
                                ),
                              ),
                            )


                          ],),
                        ),
                      ),
                    ],
                  ),

                  //row 1
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: <Widget>[

                            Container(
                              child: Text("24",style: TextStyle(fontSize: 20),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(color: Colors.red, height: 2, width: 100,),
                            ),
                            Container(
                              child: Text("Overdue Days",style: TextStyle(fontSize: 15),),
                            )

                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(0,30,0,0),
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 30,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50.0),
                                  border: Border.all(
                                      color: Colors.red,
                                      width: 2.0
                                  )
                              ),
                              child: Center(child: Container(child: Text("AED 800",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),))),
                            ),

                            Padding(
                              padding: const EdgeInsets.fromLTRB(0,5,0,0),
                              child: Container(height: 25,
                                width: 80,
                                color: Colors.black,
                                child: Center(child: Text("Amount",style: TextStyle(color: Colors.white),)),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[

                            Container(
                              child: Text("AED 200",style: TextStyle(fontSize: 20),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(color: Colors.red, height: 2, width: 100,),
                            ),
                            Container(
                              child: Text("Balance",style: TextStyle(fontSize: 15),),
                            )

                          ],
                        ),
                      ),


                    ],
                  ),


                ],
              ),

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
            ),
          ),
        ),
      ],
    );
  }
}
