import 'package:flutter/material.dart';
import 'package:sabak_2_counter_app/main.dart';

class MyTheme {
  //MARK: Text style-bodyдеги тексттерди озгортуу учун колдонулат
  ThemeData MyLightTheme = ThemeData (
    textTheme: const TextTheme
    (bodyMedium: TextStyle(
      color:Colors.black,
      fontSize: 30,
      fontWeight: FontWeight.w300,
      ),
    ),
  );
  
ThemeData myBodyBgkColor = ThemeData(
  scaffoldBackgroundColor: Colors.grey,
);

ThemeData myAppBarBgkColor =ThemeData(
  appBarTheme: AppBarTheme(
    color: Colors.red
  ), 
  
    
  );

}

