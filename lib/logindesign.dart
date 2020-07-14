
import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
  final _phoneController = TextEditingController();
  final _passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

     
        body: new Container(
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Color.fromRGBO(56, 103, 180, 1),Color.fromRGBO(15, 148, 180, 1)])
          ),

          padding: EdgeInsets.fromLTRB(32,32,32,0),
          child: SingleChildScrollView(
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[

//                Image.network("https://image.flaticon.com/icons/svg/929/929731.png"),

                Text("back arrow"),

                  SizedBox(height:150),

                  Center(child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 36),)),

                  SizedBox(height: 80),

                  TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            borderSide: BorderSide(color: Colors.grey[200])
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            borderSide: BorderSide(color: Colors.grey[300])
                        ),
                        filled: true,
                        fillColor: Colors.grey[100],
                        hintText: "Phone Number"

                    ),
                    controller: _phoneController,
                  ),

                  SizedBox(height: 16,),

                  TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            borderSide: BorderSide(color: Colors.grey[200])
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            borderSide: BorderSide(color: Colors.grey[300])
                        ),
                        filled: true,
                        fillColor: Colors.grey[100],
                        hintText: "Password"

                    ),

                    controller: _passController,
                  ),

                  SizedBox(height: 150,),

                  Container(
                    width: double.infinity,
                    child: FlatButton(
                      child: Text("Login"),
                      textColor: Colors.blue,
                      padding: EdgeInsets.all(16),
                      onPressed: (){
                      },
                      color: Colors.white,
                    ),
                  ),




                ],
              ),
            ),
          ),
        )
    );
  }
}
