import 'package:flutter/material.dart';
import 'dart:math' as math;

class aboutmePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 448,
      height: 998,
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 1),
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
                image: DecorationImage(
                  image: AssetImage('assets/images/Image1.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            top: 114,
            left: 25,
            child: Container(
              width: 396,
              height: 447,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromRGBO(255, 255, 255, 0.57),
              ),
            ),
          ),
          Positioned(
            top: 178,
            left: 35,
            child: Text(
              'Hey there!\n'
                  'I\'m a 20 year old software engineering intern who '
                  '\nloves swimming, reading, and, most importantly, coding. '
                  '\nSince I wrote my first line of code, I\'ve been hooked '
                  '\non the endless possibilities it offers!\n'
                  'Food Choicer is a user-friendly app for discovering'
                  '\n delicious recipes. With a comprehensive database and '
                  '\nintuitive interface, '
                  '\nfinding the perfect dish is easier than ever.\n',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Poppins',
                fontSize: 15,
                fontWeight: FontWeight.normal,
                height: 1.2,
              ),
            ),
          ),
          Positioned(
            top: 452,
            left: 90,
            child: Text(
              'Feel free to contact me for questions:\nnuresma349@gmail.com',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(0, 0, 0, 1),
                fontFamily: 'Poppins',
                fontSize: 15,
                fontWeight: FontWeight.normal,
                height: 1.2,
              ),
            ),
          ),
          Positioned(
            top: 68,
            left: 23,
            child: Container(
              width: 397.86456298828125,
              height: 38,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 0,
                    left: 146,
                    child: Text(
                      'About Me',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(0, 190, 41, 1),
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        height: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: aboutmePage(),
  ));
}

