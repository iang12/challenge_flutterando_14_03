import 'package:challenge_flutterando_14_03/models/books.dart';
import 'package:challenge_flutterando_14_03/screens/home/book_preview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookDetail extends StatelessWidget {
  final BookPageView book;
  BookDetail({this.book});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    height: 550,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(book.url), fit: BoxFit.cover),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30))),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            book.title,
                            style: GoogleFonts.aladin(
                                fontSize: 35.0, color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            book.subtitle,
                            style: TextStyle(
                                fontSize: 20,
                                color: Color(0xFF787987),
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Align(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Text(
                              book.note,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              book.totalAvaliable,
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            ),
                          ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Color(0xFFEb9679),
                        inactiveTrackColor: Colors.white,
                        trackShape: RectangularSliderTrackShape(),
                        trackHeight: 3.0,
                        thumbColor: Colors.redAccent,
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 5.0),
                        overlayColor: Color(0xFFEb9679).withAlpha(32),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 10.0),
                      ),
                      child: Slider(
                        max: 100,
                        value: 70,
                        onChanged: (value) {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, bottom: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            '00:00',
                            style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFFE9E9E9),
                                fontWeight: FontWeight.w400),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 100),
                            child: Text(
                              '32:15',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xFFE9E9E9),
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
              Positioned(
                bottom: 175,
                left: 140,
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(colors: [
                        Color(0xFFE9E9E9).withOpacity(0.8),
                        Color(0xFFB9B2AB).withOpacity(0.9),
                        Color(0xFF787987).withOpacity(0.9)
                      ]),
                      color: Colors.grey),
                  width: 80,
                  height: 80,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => BookPreview(
                                    book: book,
                                  )));
                    },
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
