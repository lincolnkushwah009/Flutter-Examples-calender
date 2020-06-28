import 'package:flutter/material.dart';
import 'chat_model.dart';

class chat extends StatefulWidget {
  @override
  _chatState createState() => _chatState();
}

class _chatState extends State<chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        elevation: 5,
        centerTitle: true,
        title: Text('NETWORK'),
        actions: <Widget>[
          Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
          SizedBox(width: 20)
        ],

      ),
      body: Container(
        color: Colors.black87,
        child: ListView.builder(
          itemCount: ChatModel.dummyData.length,
          itemBuilder: (context, index) {
            ChatModel _model = ChatModel.dummyData[index];
            return Column(
              children: <Widget>[
                Divider(
                  height: 12.0,
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 24.0,
                    backgroundImage: NetworkImage(_model.avatarUrl),
                  ),
                  title: Row(
                    children: <Widget>[
                      Text(_model.name,style: TextStyle(color: Colors.white)),
                      SizedBox(
                        width: 16.0,
                      ),
//                      Text(
//                        _model.datetime,
//                        style: TextStyle(fontSize: 12.0,color: Colors.white),
//                      ),
                    ],
                  ),
                  subtitle: Text(_model.message,style: TextStyle(color: Colors.white70,fontStyle: FontStyle.italic)),
                  trailing: Text("Aug 22",style: TextStyle(color: Colors.white38),),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
