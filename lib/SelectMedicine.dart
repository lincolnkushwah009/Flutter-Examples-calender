import 'package:flutter/material.dart';


class SelectMedicine extends StatefulWidget {
  @override
  _SelectMedicineState createState() => _SelectMedicineState();
}

class _SelectMedicineState extends State<SelectMedicine> {
  TextEditingController _textFieldController = TextEditingController();

  _onClear() {
    setState(() {
      _textFieldController.text = "";
    });
  }

  // Drop Down starts from here
  String _value;

  // Drop Down End  here

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Medicine"),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15,0,15,0),
        child: Center(
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _textFieldController,
                decoration: InputDecoration(
                  suffix: IconButton(
                    icon: Text("X",style: TextStyle(fontSize: 25),),

                    onPressed: _onClear,
                  ),
                ),
              ),
              SizedBox(height: 40,),
              Container(

                width: double.infinity,
                child: new DropdownButton<String>(
                  isExpanded: true,
                  focusColor: Colors.blue,
                  autofocus: true,
                  items: [
                    DropdownMenuItem<String>(
                      child: Text('Pill (s)'),
                      value: 'one',
                    ),
                    DropdownMenuItem<String>(
                      child: Text('Item 2'),
                      value: 'two',
                    ),
                    DropdownMenuItem<String>(
                      child: Text('Item 3'),
                      value: 'three',
                    ),
                  ],
                  onChanged: (String value) {
                    setState(() {
                      _value = value;
                    });
                  },
                  hint: Text('Unit'),
                  value: _value,
                ),
              ),
              SizedBox(height: 40,),
              ButtonTheme(
                minWidth: double.infinity,
                height: 50.0,
                child: RaisedButton(
                  onPressed: (){},
                  textColor: Colors.white,
                  color: Colors.blue,
                  child: Text("Next",style: TextStyle(fontSize: 16),),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
