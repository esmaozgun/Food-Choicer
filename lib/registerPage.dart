import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Androidlarge3Widget extends StatefulWidget {
  @override
  _Androidlarge3WidgetState createState() => _Androidlarge3WidgetState();
}

class _Androidlarge3WidgetState extends State<Androidlarge3Widget> {
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
              top: 407,
              left: 57,
              child: Text(
                'Enter email :',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(213, 155, 155, 1),
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Positioned(
              top: 434,
              left: 57,
              child: Container(
                width: 352,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(139, 139, 139, 1),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 512,
              left: 57,
              child: Text(
                'Enter password:',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(213, 155, 155, 1),
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Positioned(
              top: 538,
              left: 57,
              child: Container(
                width: 352,
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(139, 139, 139, 1),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 295,
              left: 160,
              child: Text(
                'Register',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(0, 190, 41, 1),
                  fontFamily: 'Poppins',
                  fontSize: 30,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Positioned(
              top: 340,
              left: 110,
              child: Text(
                'Create your new account',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(0, 190, 41, 1),
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Positioned(
              top: 631,
              left: 57,
              child: GestureDetector(
                onTap: () {
                  // Handle Sign Up action
                },
                child: Container(
                  width: 352,
                  height: 57,
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
                      'Sign Up',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 914,
              left: 113,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Already have an Account? ',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Handle Log in action
                    },
                    child: Text(
                      'Log in',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(0, 190, 41, 1),
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 704,
              left: 46,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Divider(
                      color: Colors.green,
                      thickness: 1,
                    ),
                  ),
                  Text(
                    'OR',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.green,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 785.659423828125,
              left: 131.4117431640625,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      // Handle Facebook login
                    },
                    child: Container(
                      width: 41.411766052246094,
                      height: 44.28985595703125,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      child: SvgPicture.asset(
                        'assets/images/facebook.svg',
                        semanticsLabel: 'Facebook',
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Handle Google login
                    },
                    child: Container(
                      width: 41.411766052246094,
                      height: 44.28985595703125,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      child: SvgPicture.asset(
                        'assets/images/google.svg',
                        semanticsLabel: 'Google',
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Handle Twitter login
                    },
                    child: Container(
                      width: 41.411766052246094,
                      height: 44.28985595703125,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                      child: SvgPicture.asset(
                        'assets/images/apple.svg',
                        semanticsLabel: 'apple',
                      ),
                    ),
                  ),
                ],
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
    home: Androidlarge3Widget(),
  ));
}
