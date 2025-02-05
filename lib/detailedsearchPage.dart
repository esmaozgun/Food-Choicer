import 'package:flutter/material.dart';
import 'homePage.dart';
import 'searchPage.dart';
import 'aboutMePage.dart';
import 'favoritesPage.dart';

class Androidlarge7Widget extends StatefulWidget {
  @override
  _Androidlarge7WidgetState createState() => _Androidlarge7WidgetState();
}

class _Androidlarge7WidgetState extends State<Androidlarge7Widget> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Image2.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          // Başlık
          Positioned(
            top: 70,
            left: 140,
            child: Container(
              width: 347.265,
              height: 41.942,
              child: Text(
                'Recipe Details',
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
          // Favori butonu
          Positioned(
            top: 130,
            right: 30,
            child: IconButton(
              icon: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                color: isFavorite ? Colors.red : Colors.grey,
                size: 30,
              ),
              onPressed: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
            ),
          ),
          // Tarif detayları
          Positioned(
            top: 180,
            left: 20,
            right: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Tarif adı
                Text(
                  'Recipe Name',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(0, 190, 41, 1),
                  ),
                ),
                SizedBox(height: 10),
                // Tarif açıklaması
                Text(
                  'This is where the recipe description goes.',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 10),
                // Malzemeler
                Text(
                  'Ingredients:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text('• Ingredient 1\n• Ingredient 2\n• Ingredient 3', style: TextStyle(fontSize: 16)),
                SizedBox(height: 10),
                // Hazırlama süresi
                Text(
                  'Preparation Time: 30 minutes',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          // Navigasyon barı
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
    home: Androidlarge7Widget(),
  ));
}
