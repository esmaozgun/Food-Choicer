import 'package:flutter/material.dart';
import 'favoritesPage.dart';
import 'aboutmePage.dart';
import 'searchPage.dart';

class Androidlarge4Widget extends StatefulWidget {
  @override
  _Androidlarge4WidgetState createState() => _Androidlarge4WidgetState();
}

class _Androidlarge4WidgetState extends State<Androidlarge4Widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Arka plan resmi
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
          // Başlık
          Positioned(
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
                    child: Text(
                      'Hello Again!',
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
                  Positioned(
                    top: 40,
                    left: 0,
                    child: Container(
                      width: 221.25,
                      child: Text(
                        'What are you cooking today?',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.53),
                          fontFamily: 'Poppins',
                          fontSize: 11,
                          fontWeight: FontWeight.normal,
                          height: 1,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Arama Çubuğu
          Positioned(
            top: 180,
            left: 38,
            child: Container(
              width: 372,
              height: 58,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromRGBO(255, 255, 255, 1),
                border: Border.all(
                  color: Color.fromRGBO(217, 217, 217, 1),
                  width: 1.3,
                ),
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 15.95,
                    left: 14.58,
                    child: Icon(
                      Icons.search,
                      color: Color.fromRGBO(217, 217, 217, 1),
                    ),
                  ),
                  Positioned(
                    top: 20.67,
                    left: 55.43,
                    child: Text(
                      'Search recipe',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(217, 217, 217, 1),
                        fontFamily: 'Poppins',
                        fontSize: 11,
                        fontWeight: FontWeight.normal,
                        height: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Navbar
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: 448,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  top: BorderSide(
                    color: Colors.white,
                    width: 1.0,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.home, size: 40, color: Color.fromRGBO(0, 190, 41, 1)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Androidlarge4Widget()),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.bookmark, size: 40, color: Color.fromRGBO(0, 190, 41, 1)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Androidlarge6Widget()),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.search, size: 40, color: Color.fromRGBO(0, 190, 41, 1)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Androidlarge5Widget()),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.settings, size: 40, color: Color.fromRGBO(0, 190, 41, 1)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AboutMePage()),
                      );
                    },
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
    home: Androidlarge4Widget(),
  ));
}
