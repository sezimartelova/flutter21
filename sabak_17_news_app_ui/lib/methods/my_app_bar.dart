import 'package:flutter/material.dart';
import 'package:sabak_17_news_app_ui/constants/app_colors/app_bar_bgc.dart';
import 'package:sabak_17_news_app_ui/constants/app_colors/icons_color.dart';
import 'package:sabak_17_news_app_ui/constants/text_styles/text_styles.dart';

AppBar myAppBar() {
  return AppBar(
    backgroundColor: orangeColor,
    //^app_bar_bgc файлга класс тузуп,эпбардын колорун бердик кыскартып
    title: const Text(
      'News Agregator',
      style: titleStyle,
    ),
    actions: const [
      Icon(
        Icons.more_vert, //иконканын названиеси(вертикально 3 точка,c права)
        color: menuColor,
      ),
    ],
  );
}
