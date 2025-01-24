import 'package:flutter/material.dart';
import 'package:sabak_17_news_app_ui/constants/app_colors/app_bar_bgc.dart';
import 'package:sabak_17_news_app_ui/features/data/service.dart';
import 'package:sabak_17_news_app_ui/features/model/news_model.dart';
import 'package:sabak_17_news_app_ui/methods/my_app_bar.dart';
import 'package:sabak_17_news_app_ui/widgets/news_card.dart';
import 'package:sabak_17_news_app_ui/widgets/search_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    NewsService().fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: scaffoldColor,
      appBar: myAppBar(),
      body: FutureBuilder<NewsModel?>(
          future: NewsService().fetchData(),
          builder: (BuildContext context, AsyncSnapshot<NewsModel?> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator.adaptive());
            } else if (snapshot.connectionState == ConnectionState.none) {
              return const Center(
                child: Text('Сервер не работает'),
              );
            } else if (snapshot.connectionState == ConnectionState.done) {
              return RefreshIndicator(
                onRefresh: () async {
                  NewsModel();
                },
                child: ListView.builder(
                    itemCount: snapshot.data?.articles?.length,
                    itemBuilder: (context, index) {
                      final data = snapshot.data!.articles;
                      return NewsCard(
                          index: index,
                          data: data); //extrectWidget кылып чыгарып салдык
                    }),
              );
            }
            return const Center(
              child: Text('Белгисиз абал'),
            );
          }),

      floatingActionButton:
          const SearchWidget(), //CircleAvatar ды экстрактвиджет кылып чыгардык
    ));
  }
}
