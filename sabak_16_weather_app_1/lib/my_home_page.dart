import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sabak_16_weather_app_1/app_text_styles.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String weatherInfo = 'Маалымат жуктолуудо...';
  String sityName = '';

  void weatherFun() async {
    final url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=bishkek,&appid=41aa18abb8974c0ea27098038f6feb1b');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      print(response.body);
      final data = jsonDecode(response.body);
      final name = data['name'];
      final temp = data['main']['temp'];
      final withKelvin = temp - 273.15;

      setState(() {
        weatherInfo = withKelvin.toStringAsFixed(0);
        sityName = name;
      });
    } else {
      print(response.statusCode);
    }
  }

  @override
  void initState() {
    super.initState();
    weatherFun();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff66d8f1),
      appBar: AppBar(
        backgroundColor: const Color(0xff66d8f1),
        title: const Icon(Icons.search),
        actions: const [
          Icon(Icons.menu),
        ],
      ),
      // ignore: prefer_const_constructors
      body: Padding(
        padding: const EdgeInsets.symmetric(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ignore: prefer_const_constructors
            Text(
              'Bishkek\nKyrgyzstan',
              style: AppTextStyles.lacotionStyle,
            ),
            // ignore: unnecessary_const, prefer_const_constructors
            Text(
              'Tue, Jun 38',
              style: AppTextStyles.dataStyle,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "assets/images/3222808.png",
                  width: 150,
                ),
                // ignore: prefer_const_constructors
                Column(
                  children: const [
                    Text(
                      '19°',
                      style: AppTextStyles.tempStyle,
                    ),
                    Text(
                      'Rainy',
                      style: AppTextStyles.tempNameStyle,
                    )
                  ],
                ),
                // ignore: prefer_const_constructors
              ],
            ),
            const WeatherViewBanner(),
            const WeatherViewBanner(),
            const WeatherViewBanner(),
          ],
        ),
      ),
    );
  }
}

class WeatherViewBanner extends StatelessWidget {
  const WeatherViewBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 31.5),
      child: Container(
        width: double.infinity,
        height: 65.54,
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(
            17.25,
          ),
        ),
      ),
    );
  }
}
