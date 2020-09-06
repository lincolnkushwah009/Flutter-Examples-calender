import 'package:flutter/material.dart';

class Duration extends StatefulWidget {
  @override
  _DurationState createState() => _DurationState();
}

class _DurationState extends State<Duration> {
  @override
  int _value = 1;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Duration"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15,0,15,0),
          child: Column(
            children: <Widget>[
              Container(
                child: ListTile(
                  title: Text("Capsule"),
                  subtitle: Text("Teaspoons(s)"),
                ),
              ),
              Divider(
                height: 10,
                color: Colors.black26,
              ),

              Container(
                child: Column(
                    children: <Widget>[
                for (int i = 1; i <= 3; i++)
                ListTile(
              leading: Text(
              'Radio $i'
              ),
                  trailing: Radio(
        value: i,
        groupValue: _value,
        onChanged: i == 3 ? null : (int value) {
          setState(() {
            _value = value;
          });
        },
      ),
    ),
                    ]
                ),
              ),


              Divider(
                height: 10,
                color: Colors.black26,
              ),
              Container(
                child: ListTile(
                  title: Text("Until"),
                  subtitle: Text("9/15/20"),
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
