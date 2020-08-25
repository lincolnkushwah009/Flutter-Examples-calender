import 'package:flutter/material.dart';

class Design extends StatefulWidget {
  @override
  _DesignState createState() => _DesignState();
}

class _DesignState extends State<Design> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1, //                   <--- border width here
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Text("image"),
                      Text("name"),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1, //                   <--- border width here
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Text("image"),
                      Text("name"),
                    ],
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
