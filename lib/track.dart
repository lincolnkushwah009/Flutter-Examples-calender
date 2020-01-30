import 'package:flutter/material.dart';


class Track extends StatelessWidget {


  @override
  Widget build(BuildContext context) {


    return new Scaffold(

     body: Column(
       crossAxisAlignment: CrossAxisAlignment.center,
       mainAxisSize: MainAxisSize.min,
       children: [

         Padding(
           padding: const EdgeInsets.fromLTRB(20,50,20,0),
           child: new Card(
             child: Column(
               children: <Widget>[
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: <Widget>[
                       Text("Transaction ID"),
                       Text("34321324354245")
                     ],
                   ),
                 ),

                 Padding(
                   padding: const EdgeInsets.fromLTRB(20,0,0,0),
                   child: Container(
                       child: _buildDashWidget()
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: <Widget>[
                       Text("Order Date"),
                       Text("12-01-2020")
                     ],
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.fromLTRB(20,0,0,0),
                   child: Container(
                       child: _buildDashWidget()
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: <Widget>[
                       Text("Delivery"),
                       Text("20-01-2020")
                     ],
                   ),
                 ),

                 Padding(
                   padding: const EdgeInsets.fromLTRB(20,0,0,0),
                   child: Container(
                       child: _buildDashWidget()
                   ),
                 ),


                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: <Widget>[
                       Text("Status Order"),
                       Text("Out For Delivery")
                     ],
                   ),
                 ),

                 ClipPath(
                   clipper: MyCustomClipper(),
                   child: Container(
                     height: 20,
                     width: 800,
                     color: Colors.red,

                   ),
                 )



               ],
             ),
           ),
         )
       ],
     ),
    );
  }
}




class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    var curXPos = 0.0;
    var curYPos = size.height;
    var increment = size.width / 10;
    while (curXPos < size.width) {
      curXPos += increment;
      path.arcToPoint(Offset(curXPos, curYPos), radius: Radius.circular(5));
    }
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }





}



double _totalWidth = 250, _dashWidth = 5, _emptyWidth = 5, _dashHeight = 1;
Color _dashColor = Colors.grey;

// this is the main widget
Widget _buildDashWidget() {
  return Row(
    children: List.generate(
      _totalWidth ~/ (_dashWidth + _emptyWidth),
          (_) => Container(
        width: _dashWidth,
        height: _dashHeight,
        color: _dashColor,
        margin: EdgeInsets.only(left: _emptyWidth / 2, right: _emptyWidth / 2),
      ),
    ),
  );
}



@override
Path getClip(Size size) {
  Path path = Path();
  path.lineTo(0, size.height);
  var curXPos = 0.0;
  var curYPos = size.height;
  var increment = size.width / 20;
  while (curXPos < size.width) {
    curXPos += increment;
    path.arcToPoint(Offset(curXPos, curYPos), radius: Radius.circular(5));
  }
  path.lineTo(size.width, 0);
  return path;
}