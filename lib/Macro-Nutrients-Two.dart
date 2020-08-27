import 'package:flutter/material.dart';

class MacroNutrientsTwo extends StatefulWidget {
  @override
  _MacroNutrientsTwoState createState() => _MacroNutrientsTwoState();
}

class _MacroNutrientsTwoState extends State<MacroNutrientsTwo> {
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
                    SizedBox(height: 20),

                     Container(
                       decoration: BoxDecoration(
                           border: Border.all(
                               width: 1,
                               color: Colors.blue[800]
                           ),
                           borderRadius: new BorderRadius.circular(25.0),
                           color: Colors.white
                       ),

                       height: MediaQuery.of(context).size.height * 0.3,
                       width:MediaQuery.of(context).size.height * 0.4 ,
                     ),
                    SizedBox(height: 20),
                    Text("text will come here")

                  ],
                ),
              ),

            ),

            SizedBox(height: 15),
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text("Calculate required of Marcontrient"),
              onPressed: (){},
            ),
          ],
        ),
      ),

    );

  }
}
