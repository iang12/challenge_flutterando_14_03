import 'package:challenge_flutterando_14_03/models/books.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookPreview extends StatelessWidget {
  final BookPageView book;
  BookPreview({this.book});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'X',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                  Icon(
                    Icons.shopping_cart,
                    size: 30,
                    color: Colors.white,
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  height: 300,
                  width: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(book.url), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      book.title,
                      style: GoogleFonts.aladin(
                          fontSize: 35.0, color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      book.subtitle,
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF787987),
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            book.note,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            book.totalAvaliable,
                            style: TextStyle(
                                fontSize: 20,
                                color: Color(0xFF787987),
                                fontWeight: FontWeight.w400),
                          ),
                        ]),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                            child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  topLeft: Radius.circular(20))),
                          child: Center(
                              child: Text(
                            book.price,
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w900),
                          )),
                        )),
                        Expanded(
                            child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                              color: Color(0xFFEB9670),
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(20),
                                  topRight: Radius.circular(20))),
                          child: Center(
                              child: Text(
                            'Free Prewiew',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          )),
                        ))
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'You can also like',
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF787987),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: double.infinity,
                      height: 170,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: books
                            .map((e) => Container(
                                  margin: EdgeInsets.only(right: 15),
                                  width: 110,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(e.url),
                                          fit: BoxFit.cover)),
                                ))
                            .toList(),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
