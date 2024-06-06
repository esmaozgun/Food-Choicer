import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Androidlarge1Widget(),
    );
  }
}


class Androidlarge1Widget extends StatefulWidget {
  @override
  _Androidlarge1WidgetState createState() => _Androidlarge1WidgetState();
}

class _Androidlarge1WidgetState extends State<Androidlarge1Widget> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator Androidlarge1Widget - FRAME

    return Container(
      width: 448,
      height: 998,
      decoration: BoxDecoration(
        color : Color.fromRGBO(255, 255, 255, 1),
      ),
      child: Stack(
          children: <Widget>[
          Positioned(
          top: 0,
          left: 0,
          child: Container(
              width: 448,
              height: 998,
              decoration: BoxDecoration(
                image : DecorationImage(
                    image: AssetImage('assets/images/Image1.png'),
                    fit: BoxFit.fill
                ),
              )
          )
      ),Positioned(
        top: 328,
        left: 50,
        child: Text('Food Choicer',
          textAlign: TextAlign.left, style: TextStyle(
            color: Color.fromRGBO(0, 190, 41, 1),
        fontFamily: 'Poppins',
        fontSize: 60,
        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
        fontWeight: FontWeight.normal,
        height: 1
    ),)
    ),Positioned(
    top: 538,
    left: 60,
    child: Text('Easy way to find great recipes', textAlign: TextAlign.left, style: TextStyle(
    color: Color.fromRGBO(0, 190, 41, 1),
    fontFamily: 'Poppins',
    fontSize: 24,
    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
    fontWeight: FontWeight.normal,
    height: 1
    ),)
    ),Positioned(
    top: 47,
    left: 141,
    child: Container(
    width: 97,
    height: 89,
    decoration: BoxDecoration(

    )
    )
    ),Positioned(
    top: 786,
    left: 74,
    child: Container(
    width: 300,
    height: 50,

    child: Stack(
    children: <Widget>[
    Positioned(
    top: 0,
    left: 0,
    child: Container(
    width: 300,
    height: 50,
    decoration: BoxDecoration(
    borderRadius : BorderRadius.only(
    topLeft: Radius.circular(15),
    topRight: Radius.circular(15),
    bottomLeft: Radius.circular(15),
    bottomRight: Radius.circular(15),
    ),
    color : Color.fromRGBO(0, 190, 41, 1),
    )
    )
    ),Positioned(
    top: 10,
    left: 92,
    child: Text('Get Started', textAlign: TextAlign.left, style: TextStyle(
    color: Color.fromRGBO(255, 255, 255, 1),
    fontFamily: 'Poppins',
    fontSize: 20,
    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
    fontWeight: FontWeight.normal,
    height: 1
    ),)
    ),
    ]
    )
    )
    ),Positioned(
    top: 948,
    left: 146,
    child: Text('Designed by Esma Özgün', textAlign: TextAlign.left, style: TextStyle(
    color: Color.fromRGBO(0, 190, 41, 1),
    fontFamily: 'Poppins',
    fontSize: 12,
    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
    fontWeight: FontWeight.normal,
    height: 1
    ),)
    ),
    ]
    )
    );
  }
}


