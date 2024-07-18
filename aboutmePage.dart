import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavbarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {},
            child: SvgPicture.asset('assets/images/vector1.svg'),
          ),
          GestureDetector(
            onTap: () {},
            child: SvgPicture.asset('assets/images/vector2.svg'),
          ),
          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
            backgroundColor: Colors.green,
          ),
          GestureDetector(
            onTap: () {},
            child: SvgPicture.asset('assets/images/vector3.svg'),
          ),
          GestureDetector(
            onTap: () {},
            child: SvgPicture.asset('assets/images/bg.svg'),
          ),
        ],
      ),
    );
  }
}

class AboutMePage extends StatelessWidget {
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
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Image1.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 100,
              left: 25,
              right: 25,
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromRGBO(255, 255, 255, 0.57),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Hey there!',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'I\'m a 20 year old software engineering intern who loves swimming, reading, and, most importantly, coding. Since I wrote my first line of code, I\'ve been hooked on the endless possibilities it offers!\n\nFood Choicer is a user-friendly app for discovering delicious recipes. Finding the perfect dish is easier than ever.\n\nFeel free to contact me for questions:\nnuresma349@gmail.com',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        height: 1.2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 40,
              left: 0,
              right: 0,
              child: Center(
                child: Text(
                  'About Me',
                  style: TextStyle(
                    color: Color.fromRGBO(0, 190, 41, 1),
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: NavbarWidget(),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: AboutMePage(),
  ));
}
