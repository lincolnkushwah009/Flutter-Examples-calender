import 'package:flutter/material.dart';

class ListOneData extends StatefulWidget {
  @override
  _ListOneDataState createState() => _ListOneDataState();
}

class _ListOneDataState extends State<ListOneData> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.transparent,

        body: ListView(

          children: List.generate(40, (index) {
            return   Padding(
              padding: const EdgeInsets.fromLTRB(2, 5, 2, 15),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 7.0,
                    ),
                  ],
                  borderRadius: new BorderRadius.circular(10.0),
                  color: Colors.white,
                ),
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * 0.1,
                      child: Text("a"),
                    ),
                    Container(
                      height: 50,
                      color: Colors.black12,
                      width: 4,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.1,
                      child: Text("a"),
                    ),
                    Container(
                      height: 50,
                      color: Colors.black12,
                      width: 4,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.1,
                      child: Text("a"),
                    ),
                    Container(
                      height: 50,
                      color: Colors.black12,
                      width: 4,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.1,
                      child: Text("a"),
                    ),
                    Container(
                      height: 50,
                      color: Colors.black12,
                      width: 4,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.1,
                      child: Image.asset("assets/background.png"),
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
