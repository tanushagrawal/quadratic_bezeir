import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(home:home()
    
    );
  }
}
class home extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
    body: ClipPath(
      clipper: LineClipper(),
      child:Container(
        color:Colors.red,
        height:400,
        width:w,
      ),
    ), 
    );
  }
}

class LineClipper extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, 200);
    path.quadraticBezierTo(size.width-size.width/4, 300, size.width/2,200 );
    path.quadraticBezierTo(size.width/4, 100, 0,200 );

    path.close();
    return path;

  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}