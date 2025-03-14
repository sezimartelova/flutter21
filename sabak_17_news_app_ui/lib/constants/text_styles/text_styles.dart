import 'package:flutter/material.dart';

class TextStyles {
  static const TextStyle titleStyle = TextStyle(
    color: Color(0xffffffff),
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle newsTextStyle = TextStyle(
    color: Color(0xff000000),
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle newsURLTextStyle = TextStyle(
    color: Colors.blue,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
}

const titleStyle = TextStyles.titleStyle;
const newsTextStyle = TextStyles.newsTextStyle;
const newsURLTextStyle = TextStyles.newsURLTextStyle;
