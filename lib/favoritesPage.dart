import 'package:flutter/material.dart';
import 'homePage.dart';
import 'searchPage.dart';
import 'aboutMePage.dart';

class Androidlarge6Widget extends StatefulWidget {
  @override
  _Androidlarge6WidgetState createState() => _Androidlarge6WidgetState();
}

class _Androidlarge6WidgetState extends State<Androidlarge6Widget> {
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
                'Favorite Recipes',
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
          // Recipe Container
          Positioned(
            top: 130,
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
                  buildRecipeContainer('Recipe 5'),
                  buildRecipeContainer('Recipe 6'),
                  buildRecipeContainer('Recipe 7'),
                  buildRecipeContainer('Recipe 8'),
                  buildRecipeContainer('Recipe 9'),
                  buildRecipeContainer('Recipe 10'),
                ],
              ),
            ),
          ),
          // Navbar
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
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
                      // Mevcut sayfayı tekrar yükleme
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

void main() {
  runApp(MaterialApp(
    home: Androidlarge6Widget(),
  ));
}
