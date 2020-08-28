import 'package:flutter/material.dart';

class ListTwoData extends StatefulWidget {
  @override
  _ListTwoDataState createState() => _ListTwoDataState();
}

class _ListTwoDataState extends State<ListTwoData> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.transparent,

        body: ListView(

          children: List.generate(10, (index) {
            return  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: new BorderRadius.circular(10.0),
                    color: Colors.white
                ),
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: Text("Text",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                    ),

                    Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: Text("Photo",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                    ),

                    Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: Text("Video",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                    ),

                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
