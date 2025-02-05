import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'searchPage.dart';
import 'dart:math' as math;

class loginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Image1.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 538,
              left: 47,
              child: Container(
                width: 352,
                height: 53,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color.fromRGBO(139, 139, 139, 1),
                    width: 1,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 628,
              left: 48,
              child: Container(
                width: 352,
                height: 56.66,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    begin: Alignment(1, 0),
                    end: Alignment(0, 1),
                    colors: [
                      Color.fromRGBO(0, 190, 41, 1),
                      Color.fromRGBO(255, 158, 158, 1),
                      Color.fromRGBO(255, 158, 158, 1),
                    ],
                  ),
                ),
                child: Center(
                  child: Text(
                    'Log In',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      height: 1,
                    ),
                  ),
                )
              ),
            ),
            Positioned(
              top: 295,
              left: 103,
              child: Text(
                'Welcome back!',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(0, 190, 41, 1),
                  fontFamily: 'Poppins',
                  fontSize: 30,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: 340,
              left: 121,
              child: Text(
                'Login to your account',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(69, 196, 97, 1),
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: 407,
              left: 47,
              child: Text(
                'Enter email :',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(213, 155, 155, 1),
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: 512,
              left: 47,
              child: Text(
                'Enter password:',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(213, 155, 155, 1),
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
            ),
            Positioned(
              top: 434,
              left: 47,
              child: Container(
                width: 352,
                height: 52,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color.fromRGBO(139, 139, 139, 1),
                    width: 1,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 917,
              left: 90,
              child: Container(
                width: 294.94,
                height: 25.91,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 1,
                      left: 0,
                      child: Text(
                        'Don’t have an Account? ',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          height: 1,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 172,
                      child: Text(
                        'Create Account',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(0, 190, 41, 1),
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          height: 1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 698,
              left: 36,
              child: Container(
                width: 374,
                height: 41.52,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 168.24,
                      child: Text(
                        'OR',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          height: 1,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20.76,
                      left: 218.71,
                      child: Divider(
                        color: Colors.black,
                        thickness: 1,
                      ),
                    ),
                    Positioned(
                      top: 20.76,
                      left: 155.29,
                      child: Transform.rotate(
                        angle: -math.pi,
                        child: Divider(
                          color: Colors.black,
                          thickness: 1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 779.66,
              left: 121.64,
              child: Container(
                width: 201.66,
                height: 44.55,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 0.26,
                      left: 0,
                      child: Container(
                        width: 41.41,
                        height: 44.29,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                        child: SvgPicture.asset(
                          'assets/images/google.svg',
                          semanticsLabel: 'google',
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 80.01,
                      child: Container(
                        width: 41.41,
                        height: 44.29,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                        child: SvgPicture.asset(
                          'assets/images/apple.svg',
                          semanticsLabel: 'apple',
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: 160.25,
                      child: Container(
                        width: 41.41,
                        height: 44.29,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                        child: SvgPicture.asset(
                          'assets/images/facebook.svg',
                          semanticsLabel: 'facebook',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: loginPage(),
  ));
}
