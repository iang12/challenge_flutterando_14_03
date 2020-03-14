import 'package:challenge_flutterando_14_03/models/books.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardListView extends StatelessWidget {
  final BookPageView book;
  CardListView({this.book});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      height: 150,
      width: MediaQuery.of(context).size.width * 0.75,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: 100,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(book.url), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20)),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                book.title,
                style: GoogleFonts.aladin(fontSize: 26, color: Colors.white),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                book.subtitle,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                width: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    book.price,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    width: 15,
                  ),
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
                  Text(
                    book.totalAvaliable,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w400),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
