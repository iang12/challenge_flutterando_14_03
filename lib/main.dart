import 'package:challenge_flutterando_14_03/screens/home/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BOOKLY',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff060307),
      ),
      home: Home(),
    );
  }
}
