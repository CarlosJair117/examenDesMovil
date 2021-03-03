import 'package:examen_app/src/pages/food.dart';
import 'package:examen_app/src/pages/home_page.dart';
import 'package:examen_app/src/pages/music.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      routes: {
        '/': (BuildContext context) => Home(),
        'music': (BuildContext context) => MusicPage(),
        'food': (BuildContext context) => FoodPage()
        },
        initialRoute: '/',
    );
  }
}