class News {
  const News({required this.image, required this.date, required this.text});
  final String image;
  final String date;
  final String text;
}

News news1 = const News(
  image: 'assets/Rectangle.png',
  date: '12 Feb, 2020',
  text: 'Velit officia consequat duis enim velit mollit. 2 moth ago',
);

News news2 = const News(
  image: 'assets/image1.png',
  date: '5/ 27/15',
  text: 'Velit officia consequat duis enim velit mollit. 2 moth ago',
);

News news3 = const News(
  image: 'assets/image2.png',
  date: '1/15/12',
  text: 'Velit officia consequat duis enim velit mollit. 2 moth ago',
);

News news4 = const News(
  image: 'assets/image3.png',
  date: '21 Sep, 2020',
  text: 'Velit officia consequat duis enim velit mollit. 2 moth ago',
);

News news5 = const News(
  image: 'assets/image4.png',
  date: '8 Sep, 2020',
  text: 'Velit officia consequat duis enim velit mollit. 2 moth ago',
);

final List<News> newsList = [news1, news2, news3, news4, news5];
