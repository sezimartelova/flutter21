import 'package:flutter/material.dart';
import 'package:sabak_18_capitals_test_game/continents_page.dart';

class CountriesPage extends StatelessWidget {
  const CountriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //titleга Image берилген,аны озунчо AssetsImage деген метод кылып чыгарып салдык
      appBar: AppBar(
          automaticallyImplyLeading: false,
          leading:
              const AssetsImage(image: 'assets/images/previous.png', size: 5),
          //
          title: const Row(
              //spacing:20,
              children: [
                AssetsImage(image: 'assets/images/idea.png', size: 40),
                Text('43'),
                SizedBox(width: 20),
                Text('14'),
              ]),
          actions: [
            Row(
              children: List.generate(
                  3,
                  (index) => const AssetsImage(
                      image: 'assets/images/heart.png', size: 40)),
            ),
            const AssetsImage(image: 'assets/images/mentor.gif', size: 40),
          ]),

      body: Column(
        children: <Widget>[
          const LinearProgressIndicator(
            backgroundColor: Colors.grey,
            valueColor: AlwaysStoppedAnimation(Colors.green),
          ),
          const Text('Seoul'),
          const AssetsImage(image: 'assets/countries/seul.jpg', size: 300),
          Expanded(
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.only(top: 20),
              crossAxisSpacing: 1.5,
              mainAxisSpacing: 1.5,
              crossAxisCount: 2,
              children: List.generate(4, (index) {
                return CardWidget(
                  onTap: () {},
                  'Text',
                  '',
                  Colors.grey,
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

class AssetsImage extends StatelessWidget {
  const AssetsImage({
    super.key,
    required this.image,
    required this.size,
  });
  final String image;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: size,
    );
  }
}
