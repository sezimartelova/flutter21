import 'package:flutter/material.dart';

class MyTheme {
  //MARK: Text style-bodyдеги тексттерди озгортуу учун колдонулат
  ThemeData MyLightTheme = ThemeData (
    textTheme: const TextTheme
    (bodyMedium: TextStyle(
      color:Colors.white,
      fontSize: 30,
      fontWeight: FontWeight.w400,
      ),
      displayLarge: TextStyle(
        color: Colors. black,
        fontSize: 18,
        fontWeight: FontWeight. w500,
      )
    ),
    appBarTheme: const AppBarTheme(backgroundColor: Colors. white),
    scaffoldBackgroundColor: Colors. white,
    iconTheme: const IconThemeData(
      color: Colors. white,
      size: 30,
    ),
  );
  
ThemeData myBodyBgkColor = ThemeData(
  scaffoldBackgroundColor: Colors.grey,
);

}

