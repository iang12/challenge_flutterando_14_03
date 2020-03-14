import 'package:challenge_flutterando_14_03/models/books.dart';
import 'package:challenge_flutterando_14_03/screens/home/widgets/cardListView.dart';
import 'package:flutter/material.dart';

import 'book_details.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController _pageController;
  double _pageControllerPage = 0.0;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.4, initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          title: RichText(
            text: TextSpan(
              style: TextStyle(
                  color: Color(0xFF787987),
                  letterSpacing: 2,
                  fontSize: 25,
                  fontWeight: FontWeight.w600),
              children: <InlineSpan>[
                TextSpan(
                  text: 'BO',
                ),
                WidgetSpan(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 7),
                    child: Text(
                      'O',
                      style: TextStyle(
                          color: Color(0xFF787987),
                          letterSpacing: 1,
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                          decoration: TextDecoration.underline,
                          decorationThickness: 2,
                          decorationStyle: TextDecorationStyle.solid),
                    ),
                  ),
                ),
                TextSpan(
                  text: 'KLY',
                ),
              ],
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: IconButton(
                icon: Icon(
                  Icons.search,
                  size: 35,
                  color: Color(0xFF787987),
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Flexible(
                  flex: 3,
                  child: _horizontalListBooks(),
                ),
                Flexible(
                  flex: 1,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 15, bottom: 10, left: 20),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'Best Seller',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                ),
                Flexible(flex: 4, child: _verticalListBooks())
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 55, vertical: 30),
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey.withOpacity(0.9),
                  gradient: LinearGradient(colors: [
                    Color(0xFFB9B2AB).withOpacity(0.8),
                    Color(0xFF787987).withOpacity(0.7)
                  ]),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.library_books,
                          size: 30,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.bookmark,
                          size: 30,
                          color: Color(0xFFB9B2AB),
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.library_music,
                          size: 30,
                          color: Color(0xFFB9B2AB),
                        ),
                        onPressed: () {},
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('assets/avatar.jpeg'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  Widget _horizontalListBooks() {
    return NotificationListener<ScrollNotification>(
        onNotification: (ScrollNotification onNotification) {
          setState(() {
            _pageControllerPage = _pageController.page;
            print(_pageControllerPage);
            //print(" ${_pageController.page} testando");
          });
        },
        child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 20),
            scrollDirection: Axis.horizontal,
            controller: _pageController,
            itemCount: books.length,
            itemBuilder: (context, index) {
              return Transform.scale(
                scale: getScale(index),
                child: Stack(
                  children: <Widget>[
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => BookDetail(
                                        book: books[index],
                                      )));
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: 250,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(books[index].url),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 180,
                      left: 100,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black.withOpacity(0.7),
                          gradient: LinearGradient(colors: [
                            Color(0xFFE9E9E9).withOpacity(0.8),
                            Color(0xFFB9B2AB).withOpacity(0.9),
                            Color(0xFF787987).withOpacity(0.9)
                          ]),
                        ),
                        width: 50,
                        height: 50,
                        child: Icon(Icons.play_arrow, color: Colors.white),
                      ),
                    )
                  ],
                ),
              );
            }));
  }

  getScale(int index) {
    //print("index: ${index}, pageControllerPage = ${_pageControllerPage}");
    double scale = 1 - (_pageControllerPage - index).abs() * 0.2;
    return scale < 0.9 ? 0.9 : scale;
  }

  _verticalListBooks() {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 20),
      scrollDirection: Axis.vertical,
      children: books
          .map((book) => CardListView(
                book: book,
              ))
          .toList(),
    );
  }
}
