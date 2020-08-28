import 'package:flutter/material.dart';
import 'Components/ListTwoData.dart';
class ListTwo extends StatefulWidget {
  @override
  _ListTwoState createState() => _ListTwoState();
}

class _ListTwoState extends State<ListTwo> {
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
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: Text("Problem",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                    ),
                    Container(
                      height: 50,
                      color: Colors.black12,
                      width: 4,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: Text("Photo",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                    ),
                    Container(
                      height: 50,
                      color: Colors.black12,
                      width: 4,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: Text("Video",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
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

      child: ListTwoData() ,
    ),
            )
          ],
        ),
      ),
    );
  }
}
