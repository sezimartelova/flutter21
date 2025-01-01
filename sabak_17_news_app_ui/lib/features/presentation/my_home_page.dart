import 'package:flutter/material.dart';
import 'package:sabak_17_news_app_ui/constants/app_colors/app_bar_bgc.dart';
import 'package:sabak_17_news_app_ui/constants/app_colors/icons_color.dart';
import 'package:sabak_17_news_app_ui/constants/text_styles/text_styles.dart';
import 'package:sabak_17_news_app_ui/features/data/oop.dart';
import 'package:sabak_17_news_app_ui/widgets/news_card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: scaffoldColor,
      appBar: myAppBar(),
      body: ListView.builder(
          itemCount: newsList.length,
          itemBuilder: (context, index) {
            return NewsCard(
              index: index,
              newsList: newsList,
            ); //extrectWidget кылып чыгарып салдык
          }),
      floatingActionButton:
          const SearchWidget(), //CircleAvatar ды экстрактвиджет кылып чыгардык
    ));
  }

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
}

//search деген знактын коду,экстр.виджет болуп чыгарылды
class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 40,
      backgroundColor: orangeColor,
      child: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.search,
          color: searchColor,
          size: 30,
        ),
        //ui ылдый,он жак бурчундагы "издоо" деген белги
      ),
    );
  }
}
