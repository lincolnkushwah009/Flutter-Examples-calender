import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';

class conversation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet:  Container(
        color: Colors.black87,
        height: 50,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: TextField(

            decoration: InputDecoration(
              suffixIcon: IconButton(
                icon: Icon(Icons.send,color: Colors.white,),
                onPressed: () {},
              ),
              border: InputBorder.none,
              hintText: "enter your message....",
              hintStyle: TextStyle(color: Colors.grey)
            ),
          ),
        ),
      ),
      body: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double pixelRatio = MediaQuery.of(context).devicePixelRatio;
    double px = 1 / pixelRatio;

    BubbleStyle styleSomebody = BubbleStyle(
      nip: BubbleNip.leftTop,
      color: Colors.blueGrey,
      elevation: 1 * px,
      margin: BubbleEdges.only(top: 8.0, right: 50.0),
      alignment: Alignment.topLeft,
    );
    BubbleStyle styleMe = BubbleStyle(
      nip: BubbleNip.rightTop,
      color: Colors.black12,
      elevation: 1 * px,
      margin: BubbleEdges.only(top: 8.0, left: 50.0),
      alignment: Alignment.topRight,
    );

    return Scaffold(
      backgroundColor: Colors.grey[900],
      resizeToAvoidBottomPadding: true,
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        centerTitle: true,
        title: Text("NETWORK"),
      ),
      body: SingleChildScrollView(
        child: Column(

          children: <Widget>[
            Container(
              color: Colors.white10,
              child: ListTile(
                title:Text("Conversation With",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                subtitle: Text('polaris2112',style: TextStyle(color: Colors.white),),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                height: 700,
                color: Colors.white10,
                child: ListView(
                  padding: EdgeInsets.all(8.0),
                  children: [
                    Bubble(
                      alignment: Alignment.center,
                      color: Color.fromARGB(255, 212, 234, 244),
                      elevation: 1 * px,
                      margin: BubbleEdges.only(top: 8.0),
                      child: Text('TODAY', style: TextStyle(fontSize: 10)),
                    ),
                    Bubble(
                      style: styleSomebody,
                      child: Text(
                          'Hi Jason. Sorry to bother you. I have a queston for you.',style: TextStyle(color: Colors.white),),
                    ),
                    Bubble(
                      style: styleMe,
                      child: Text('Whats\'up?',style: TextStyle(color: Colors.white),),
                    ),
                    Bubble(
                      style: styleSomebody,
                      child: Text('I\'ve been having a problem with my computer.',style: TextStyle(color: Colors.white),),
                    ),
                    Bubble(
                      style: styleSomebody,
                      margin: BubbleEdges.only(top: 2.0),
                      nip: BubbleNip.no,
                      child: Text('Can you help me?',style: TextStyle(color: Colors.white),),
                    ),
                    Bubble(
                      style: styleMe,
                      child: Text('Ok',style: TextStyle(color: Colors.white),),
                    ),
                    Bubble(
                      style: styleMe,
                      nip: BubbleNip.no,
                      margin: BubbleEdges.only(top: 2.0),
                      child: Text('What\'s the problem?',style: TextStyle(color: Colors.white),),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
