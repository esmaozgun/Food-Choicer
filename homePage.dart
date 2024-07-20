import 'package:flutter/material.dart';


class Androidlarge4Widget extends StatefulWidget {
  @override
  _Androidlarge4WidgetState createState() => _Androidlarge4WidgetState();
}

class _Androidlarge4WidgetState extends State<Androidlarge4Widget> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator Androidlarge4Widget - FRAME

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
                  top: 108,
                  left: 38,
                  child: Container(
                      width: 221.25,
                      height: 59,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Text('Hello Again!', textAlign: TextAlign.left, style: TextStyle(
                                    color: Color.fromRGBO(0, 190, 41, 1),
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1
                                ),)
                            ),Positioned(
                                top: 39.71154022216797,
                                left: 9.094947017729282e-13,
                                child: Text('What are you cooking today?', textAlign: TextAlign.left, style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 0.5299999713897705),
                                    fontFamily: 'Poppins',
                                    fontSize: 11,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1
                                ),)
                            ),
                          ]
                      )
                  )
              ),
            ]
        )
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Androidlarge4Widget(),
  ));
}
