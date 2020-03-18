import 'package:flutter/material.dart';

class New extends StatefulWidget {
  @override
  _NewState createState() => _NewState();
}



class _NewState extends State<New> {

  int current_step = 1;

  List<Step> steps = [
    Step(
      title: Text('Placed'),
      content: Text('Placed'),
      isActive: true,
    ),
    Step(
      title: Text(''),
      content: Text('Processing!'),
      isActive: true,
    ),
    Step(
      title: Text('Dispached'),
      content: Text('Dispached'),
      isActive: true,
    ),
    Step(
      title: Text('Dilivered'),
      content: Text('Dilivered'),
      isActive: true,
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(

            child: Card(
              elevation: 10,
              child: Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("#474-025-62M-1",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                            Text("Submitted",style: TextStyle(color: Colors.grey),),
                            Text("Details",style: TextStyle(color: Colors.grey,fontSize: 12)),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Dec 25, 2019"),
                          Text("Dec 28, 2019"),

                        ],
                      ),
                    ),

                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 20.0,
                              height: 20.0,
                              decoration: new BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                              ),
                            ),
                            Container(
                              height:1.0,
                              width:80.0,
                              color:Colors.green,),
                            Container(
                              width: 20.0,
                              height: 20.0,
                              decoration: new BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                              ),
                            ),
                            Container(
                              height:1.0,
                              width:80.0,
                              color:Colors.green,),
                            Container(
                              width: 20.0,
                              height: 20.0,
                              decoration: new BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                              ),
                            ),
                            Container(
                              height:1.0,
                              width:80.0,
                              color:Colors.green,),
                            Container(
                              width: 20.0,
                              height: 20.0,
                              decoration: new BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Placed"),
                          Text("Processing"),
                          Text("Dispached"),
                          Text("Delivred"),

                        ],
                      ),
                    ),


                    Container(
                      color: Colors.white,

                      child: Column(

                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text("Placed",style: TextStyle(fontSize: 10),),
                                Text("Error",style: TextStyle(fontSize: 10),),
                                Text("Out for Delivrey",style: TextStyle(fontSize: 10),),
                                Text("Invoiced/Partial Delivery",style: TextStyle(fontSize: 10),),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),




                  ],
                ),
              ),
            )
        ),

      ),
    );
  }
}


/*
     Stepper(
                  currentStep: this.current_step,
                  steps: steps,

                  type: StepperType.vertical,
                )
*/