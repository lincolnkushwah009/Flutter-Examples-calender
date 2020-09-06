import 'package:flutter/material.dart';

class AddMedicine extends StatefulWidget {
  @override
  _AddMedicineState createState() => _AddMedicineState();
}

class _AddMedicineState extends State<AddMedicine> {
  bool PNR = false;

  void _onCangePRN(bool newValue) => setState(() {
    PNR = newValue;

    if (PNR) {
      // TODO: Here goes your functionality that remembers the user.
    } else {
      // TODO: Forget the user
    }
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Medicine"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15,0,15,0),
          child: Column(
            children: <Widget>[
              Container(
                child: ListTile(
                  title: Text("Start Date"),
                  subtitle: Text("Today"),
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(15,0,15,0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("As Needed (PRN)"),
                    Checkbox(
                        value: PNR,
                        onChanged: _onCangePRN
                    ),
                  ],
                ),
              ),

              Divider(
                height: 10,
                color: Colors.black26,
              ),
              Container(
                child: ListTile(
                  title: Text("Duration"),
                  subtitle: Text("Until Today"),
                ),
              ),
              Container(
                child: ListTile(
                  title: Text("Frequency of intake"),
                  subtitle: Text("Daily"),
                ),
              ),
              Divider(
                height: 10,
                color: Colors.black26,
              ),
              Flexible(
                child: ListTile(
                  leading:Icon(Icons.cancel,color: Colors.red,) ,
                  title: new DropdownButton<String>(
                    underline: SizedBox(),
                    hint: Text("Select"),
                    items: <String>['8:00', '9:00', '10:00', '11:00'].map((String value) {
                      return new DropdownMenuItem<String>(
                        value: value,
                        child: new Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  ),
                  trailing:new DropdownButton<String>(
                    autofocus: false,
                    underline: SizedBox(),

                    hint: Text("select"),
                    items: <String>['1 Tablespoon(s)', '1 Tablespoon(s)', '1 Tablespoon(s)', '1 Tablespoon(s)'].map((String value) {
                      return new DropdownMenuItem<String>(
                        value: value,
                        child: new Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  ),




                ),
              ),

              Container(
                child: ListTile(
                  leading:Icon(Icons.alarm_add,color: Colors.green[600],) ,

                  title: Text("Add Reminder Time"),

                ),
              ),
              Divider(
                height: 10,
                color: Colors.black26,
              ),
              Container(
                child: ListTile(
                  leading:Icon(Icons.calendar_today) ,

                  title: Text("Different times on the weekend"),

                ),
              ),
              Divider(
                height: 10,
                color: Colors.black26,
              ),
              Container(
                child: ListTile(
                  leading:Text("Alarm Setting"),

                ),
              ),
              Divider(
                height: 10,
                color: Colors.black26,
              ),

            ],
          ),
        ),
      )

    );
  }
}
