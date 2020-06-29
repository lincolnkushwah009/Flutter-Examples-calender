
import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';
import 'Models/todo.dart';
import 'package:sqflite/sqflite.dart';
import 'Utils/database_helper.dart';
final List<MyHomePage> _messages = <MyHomePage>[];
class conversation extends StatefulWidget {
  final String appBarTitle;
  final Todo todo;

  conversation(this.todo, this.appBarTitle);

  @override
  State<StatefulWidget> createState() {

    return _conversationState(this.todo, this.appBarTitle);
  }
}

class _conversationState extends State<conversation> {
  DatabaseHelper helper = DatabaseHelper();

  String appBarTitle;
  Todo todo;
  _conversationState(this.todo, this.appBarTitle);

  final TextEditingController _textController = new TextEditingController();

  void updateTitle(){
    todo.title = _textController.text;
  }
  void moveToLastScreen() {
    Navigator.pushReplacement(context,new MaterialPageRoute(builder: (context) => new conversation(todo, appBarTitle)));
  }
  void _save() async {

    _textController.clear();

    moveToLastScreen();

    // todo.date = DateFormat.yMMMd().format(DateTime.now());
    int result;
    if (todo.id != null) {  // Case 1: Update operation
      result = await helper.updateTodo(todo);
    } else { // Case 2: Insert Operation
      result = await helper.insertTodo(todo);
    }


  }

  void _handleSubmitted(String text) {
    _textController.clear();
    MyHomePage message = new MyHomePage(
      text: text,
    );
    setState(() {
      _messages.insert(0, message);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      bottomSheet:  Container(
        color: Colors.black,
        height: 50,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(9, 0, 9, 5),
          child: TextField(
            controller: _textController,
            onChanged: (value) {
              debugPrint('Something changed in Title Text Field');
              updateTitle();
            },
            style: TextStyle(color: Colors.white),

            decoration: InputDecoration(
              suffixIcon: IconButton(
                icon: Icon(Icons.arrow_forward,color: Colors.white,),
                onPressed: () {
                  setState(() {
                    debugPrint("Save button clicked");
                    _save();
                  });
                },
              ),
              border: new OutlineInputBorder(
                borderRadius: const BorderRadius.all(
                  const Radius.circular(10.0),
                ),
              ),
              hintText:'Say something ...',
              hintStyle: new TextStyle(color: Colors.white,),
            ),
          ),
        ),
      ),
      body: MyHomePage(),
    );
  }
}
// const String _name = "Pawan";


class MyHomePage extends StatefulWidget {
  final String text;
  MyHomePage({this.text});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DatabaseHelper databaseHelper = DatabaseHelper();

  List<Todo> todoList;

  int count = 0;

  void updateListView() {
    final Future<Database> dbFuture = databaseHelper.initializeDatabase();
    dbFuture.then((database) {
      Future<List<Todo>> todoListFuture = databaseHelper.getTodoList();
      todoListFuture.then((todoList) {
        setState(() {
          this.todoList = todoList;
          this.count = todoList.length;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (todoList == null) {
      todoList = List<Todo>();
      updateListView();
    }
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
      backgroundColor: Colors.white12,

      resizeToAvoidBottomPadding: true,
      appBar: AppBar(
        backgroundColor: Colors.white12,
        centerTitle: true,
        title: Text("NETWORK"),
      ),
      body: SingleChildScrollView(
        child: Column(

          children: <Widget>[
            ListTile(
              title:Text("Conversation With",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              subtitle: Text('polaris2112',style: TextStyle(color: Colors.white),),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                height: 450,
                child:
                ListView.builder(
                    itemCount: count,
                    itemBuilder: (BuildContext context, int position) {
                      //  Map<String, dynamic> item = notList[i];


                      //  Map<String, dynamic> item = ;
                      return
                        Bubble(
                          style: styleSomebody,
                          child: Text(
                            this.todoList[position].title,style: TextStyle(color: Colors.white),),
                        );
                    }

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}