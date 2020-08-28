import 'package:flutter/material.dart';

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
            Container(
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

            // Big Container.........
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: new BorderRadius.circular(10.0),
                color: Colors.black12,
              ),
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width * 0.9,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(
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
                    ),
                    Padding(
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
                    ),
                    Padding(
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
                    ),
                    Padding(
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
                    ),
                    Padding(
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
                    ),
                    Padding(
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
                    ),



                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
