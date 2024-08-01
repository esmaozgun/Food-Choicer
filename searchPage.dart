import 'package:flutter/material.dart';

class Androidlarge5Widget extends StatefulWidget {
  @override
  _Androidlarge5WidgetState createState() => _Androidlarge5WidgetState();
}

class _Androidlarge5WidgetState extends State<Androidlarge5Widget> {
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
          // Arama başlığı
          Positioned(
            top: 70,
            left: 140,
            child: Container(
              width: 347.265,
              height: 41.942,
              child: Text(
                'Search Recipes',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(0, 190, 41, 1),
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
          // Güncellenmiş Arama Çubuğu
          Positioned(
            top: 130,
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
          // Recipe Container
          Positioned(
            top: 220,
            left: 21,
            right: 21,
            bottom: 70,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  buildRecipeContainer('Recipe 1'),
                  buildRecipeContainer('Recipe 2'),
                  buildRecipeContainer('Recipe 3'),
                  buildRecipeContainer('Recipe 4'),
                ],
              ),
            ),
          ),
          // Navbar at the bottom
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
                  Icon(Icons.home, size: 40, color: Color.fromRGBO(0, 190, 41, 1)),
                  Icon(Icons.bookmark, size: 40, color: Color.fromRGBO(0, 190, 41, 1)),
                  Icon(Icons.person, size: 40, color: Color.fromRGBO(0, 190, 41, 1)),
                  Icon(Icons.settings, size: 40, color: Color.fromRGBO(0, 190, 41, 1)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildRecipeContainer(String title) {
    return Container(
      width: double.infinity,
      height: 176,
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromRGBO(0, 0, 0, 0),
            Color.fromRGBO(0, 0, 0, 1),
          ],
        ),
        image: DecorationImage(
          image: AssetImage('assets/images/Rectangle646.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Androidlarge5Widget(),
  ));
}
