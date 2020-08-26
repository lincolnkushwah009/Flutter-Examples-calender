import 'package:flutter/material.dart';

class PeriodInformer extends StatefulWidget {
  @override
  _PeriodInformerState createState() => _PeriodInformerState();
}

class _PeriodInformerState extends State<PeriodInformer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
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

              child: Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 20),
                    Text("Required Details",style: TextStyle(color: Colors.blue,fontSize: 25,fontWeight: FontWeight.bold),),
                    SizedBox(height: 10),
                    Text("Please fill your Details",style: TextStyle(color: Colors.blue,fontSize: 15),),
                    SizedBox(height: 80),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20,10,20,0),
                      child: Row(
                        children: <Widget>[
                          Text("Name"),
                          SizedBox(width: 10),
                          Expanded(
                            child: Padding(
//                            padding: const EdgeInsets.fromLTRB(20,0,30,0),
                              padding: const EdgeInsets.fromLTRB(0,0,0,0),
                              child: Container(
                                decoration:  BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.white, //                   <--- border color
                                    width: 5.0,
                                  ),
                                ),
                                height: 25,
                                child: Center(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white),
                                      ),
                                    ),
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20,10,120,0),
                      child: Row(
                        children: <Widget>[
                          Text("Age"),
                          SizedBox(width: 10),
                          Expanded(
                            child: Container(
                              decoration:  BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.white, //                   <--- border color
                                  width: 5.0,
                                ),
                              ),
                              height: 25,
                              child: Center(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                  ),
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          Text("Year"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20,10,20,0),
                      child: Row(
                        children: <Widget>[
                          Text("Average cycle Duration"),
                          SizedBox(width: 10),
                          Expanded(
                            child: Container(
                              decoration:  BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.white, //                   <--- border color
                                  width: 5.0,
                                ),
                              ),
                              height: 25,
                              child: Center(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                  ),
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          Text("days"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20,20,10,0),
                      child: Row(
                        children: <Widget>[
                          Text("Average bleeding\n(Menstruation) Duration"),
                          SizedBox(width: 10),
                          Expanded(
                            child: Container(
                              decoration:  BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.white, //                   <--- border color
                                  width: 5.0,
                                ),
                              ),
                              height: 25,
                              child: Center(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                    ),
                                  ),
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          Text("days"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20,20,30,0),
                      child: Row(
                        children: <Widget>[
                          Text("Permenstrual\nSymptoms/mood"),
                          SizedBox(width: 10),
                          Expanded(
                            child: Container(
                              decoration:  BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.white, //                   <--- border color
                                  width: 5.0,
                                ),
                              ),
                              height: 25,
                              child: Center(
                                child: new DropdownButton<String>(

                                  items: <String>['A', 'B', 'C', 'D'].map((String value) {
                                    return new DropdownMenuItem<String>(
                                      value: value,
                                      child: new Text(value),
                                    );
                                  }).toList(),
                                  onChanged: (_) {},
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 20),

                        ],
                      ),
                    ),


                  ],
                ),
              ),

            ),

            SizedBox(height: 15),
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text("Save Details"),
              onPressed: (){},
            )
          ],
        ),
      ),

    );

  }
}
