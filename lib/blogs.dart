import 'package:flutter/material.dart';


class Blog extends StatefulWidget {
  @override
  _BlogState createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(

          children: List.generate(3, (index) {
            return  Padding(
              padding: const EdgeInsets.all(8.0),
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
                width: MediaQuery.of(context).size.width *0.9,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                     Image.asset("assets/background.png",
                       height: MediaQuery.of(context).size.height *0.3,
                     ),
                      Row(children: <Widget>[
                        Text("louram ipsum",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
                        SizedBox(width: 20,),
                        Text("louram ipsum",style: TextStyle(color: Colors.grey),),
                      ],),
                      SizedBox(height: 10),
                      Text("Heading for this post will come here",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 15),),
                      SizedBox(height: 10),
                      Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",style: TextStyle(color: Colors.grey,fontSize: 12),),
                      SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                        Text(""),

                        Text("louram ipsum",style: TextStyle(color: Colors.blue),),
                      ],),




                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
