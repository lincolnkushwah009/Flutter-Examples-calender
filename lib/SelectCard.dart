import 'package:flutter/material.dart';




class SelectCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'NonStopIO',
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool longPressFlag = false;
  List<int> indexList = new List();

  void longPress() {
    setState(() {
      if (indexList.isEmpty) {
        longPressFlag = false;
      } else {
        longPressFlag = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Selected ${indexList.length}  ' + indexList.toString()),
      ),
      body: new ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return new CustomWidget(
            index: index,
            longPressEnabled: longPressFlag,
            callback: () {
              if (indexList.contains(index)) {
                indexList.remove(index);
              } else {
                indexList.add(index);
              }

              longPress();
            },
          );
        },
      ),
     // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class CustomWidget extends StatefulWidget {
  final int index;
  final bool longPressEnabled;
  final VoidCallback callback;

  const CustomWidget({Key key, this.index, this.longPressEnabled, this.callback}) : super(key: key);

  @override
  _CustomWidgetState createState() => new _CustomWidgetState();
}

class _CustomWidgetState extends State<CustomWidget> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onLongPress: () {
        setState(() {
          selected = !selected;
        });
        widget.callback();
      },
      onTap: () {
        if (widget.longPressEnabled) {
          setState(() {
            selected = !selected;
          });
          widget.callback();
        }
      },
      child: new Container(
        margin: new EdgeInsets.all(5.0),
        child: new ListTile(
          title: new Text("Title ${widget.index}"),
          subtitle: new Text("Description ${widget.index}"),
        ),
        decoration: selected
            ? new BoxDecoration(color: Colors.black38, border: new Border.all(color: Colors.black))
            : new BoxDecoration(),
      ),
    );
  }
}