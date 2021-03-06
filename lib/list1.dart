import 'package:flutter/material.dart';
import 'Components/ListOneData.dart';


class ListOne extends StatefulWidget {
  @override
  _ListOneState createState() => _ListOneState();
}

class _ListOneState extends State<ListOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),
      body: Center(

        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: new BorderRadius.circular(10.0),
                  color: Colors.cyan[200],
                ),
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * 0.1,
                      child: Text("Date of Admit",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                    ),
                    Container(
                      height: 50,
                      color: Colors.black12,
                      width: 4,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.1,
                      child: Text("Last Hospital",style: TextStyle(fontSize: 9,fontWeight: FontWeight.bold),),
                    ),
                    Container(
                      height: 50,
                      color: Colors.black12,
                      width: 4,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.1,
                      child: Text("Blood Transfusion",style: TextStyle(fontSize: 9,fontWeight: FontWeight.bold),),
                    ),
                    Container(
                      height: 50,
                      color: Colors.black12,
                      width: 4,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.1,
                      child: Text("Total Unit Transfusion",style: TextStyle(fontSize: 9,fontWeight: FontWeight.bold),),
                    ),
                    Container(
                      height: 50,
                      color: Colors.black12,
                      width: 4,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.1,
                      child: Text("Attached Photo",style: TextStyle(fontSize: 9,fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
              ),
            ),

            // Big Container.........
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: new BorderRadius.circular(10.0),
                color: Colors.black12,
              ),
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width * 0.9,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.7,

                child: ListOneData() ,
              ),
            )
          ],
        ),
      ),
    );
  }
}
