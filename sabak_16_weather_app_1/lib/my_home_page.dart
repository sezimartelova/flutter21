// ignore_for_file: sort_child_properties_last

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sabak_16_weather_app_1/constants.dart/app_text_styles.dart';
import 'package:sabak_16_weather_app_1/constants.dart/liner.gradient.dart';
import 'package:sabak_16_weather_app_1/widgets/slider_view.dart';
import 'package:sabak_16_weather_app_1/widgets/weather_days_card.dart';
import 'package:sabak_16_weather_app_1/widgets/weather_view_banner.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String weatherInfo = 'Маалымат жуктолуудо...';
  String sityName = '';
  String countryN = '';
  String weatherIcon = '';
  String mainWeather = '';
  double windWeather = 0;
  //переменныйлар

  void weatherFun() async {
    final url = Uri.parse(
        //функция,ичнде https деген пакет колдондук
        'https://api.openweathermap.org/data/2.5/weather?q=bishkek,&appid=41aa18abb8974c0ea27098038f6feb1b');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      //серверден бут маалымат келди дегенди билдирет
      print(response.body);
      final data = jsonDecode(response.body);

      final name = data['name'] ?? 'Белгисиз шарр';
      final temp = data['main']['temp'] ?? 0.0;
      final countryName = data['sys']['country'] ?? 'Белгисиз олко';
      final icon = data['weather'][0]['icon'] ?? '';
      final main = data['weather'][0]['main'] ?? 'Белгисиз аба-ырайы';
      final wind = (data['wind']['speed'] ?? 0.0).toDouble();

      final withKelvin = temp - 273.15;

      //[]

      setState(() {
        weatherInfo = withKelvin.toStringAsFixed(0);
        sityName = name;
        countryN = countryName;
        weatherIcon = icon;
        mainWeather = main;
        windWeather = wind;
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
    return SafeArea(
      child: Scaffold(
          // ignore: prefer_const_constructors
          backgroundColor: Color(0xff66d8f1),
          body: SingleChildScrollView(
            //body ни ойдо жылдырат,баары баткандай кылып
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinerGradientColor.liner,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 31.5, vertical: 20.7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/icons/search.png'),
                        Image.asset('assets/icons/menu.png'),
                      ],
                    ),
                    // ignore: prefer_const_constructors
                    Text(
                      '$sityName,\n$countryN',
                      style: AppTextStyles.lacotionStyle,
                    ),

                    // ignore: prefer_const_constructors
                    Text(
                      'Tue, Jun 30',
                      style: AppTextStyles.dataStyle,
                    ),
                    Row(
                      children: [
                        Image.network(
                          weatherIcon.isEmpty
                              ? 'https://openweathermap.org/img/wn/$weatherIcon@2x.png'
                              : //'assets/images/cludy.png',
                              'assets/images/cludy _1x.png',
                          width: 250.16,
                          height: 250.98,
                          fit: BoxFit.fill,
                        ),
                        // ignore: prefer_const_constructors
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  weatherInfo,
                                  style: AppTextStyles.tempStyle,
                                ),
                                const Text(
                                  '\u2103', //°C корсотуп берет эмулятордон
                                  style: TextStyle(fontSize: 25),
                                )
                              ],
                            ),
                            const Text(
                              '',
                              //'Rainy',
                              style: AppTextStyles.tempNameStyle,
                            )
                          ],
                        ),
                      ],
                    ),

                    const WeatherViewBanner(
                      image: 'assets/images/umbrella.png',
                      text: 'Rainfull',
                      text2: ' 3cm',
                    ),

                    const WeatherViewBanner(
                      image: 'assets/images/vector.png',
                      text: 'Wind',
                      text2: '3k/h',
                      //' 19km/h,',
                    ),
                    const WeatherViewBanner(
                      image: 'assets/images/rectangle.png',
                      text: 'Humidity',
                      text2: '64%',
                    ),
                    //сыртка алып чыгып кеткенimageди эми ушул жерге беребиз 3ну 3башка суротту
                    //т.е.image=>final/required(weatherViewBunnerпапкадан)кылып=>myHomePageке келип суротту киргизебиз
                    const SliderView(),
                  ],
                ),
              ),
            ),
          ),
          bottomNavigationBar: Container(
            decoration: const BoxDecoration(
              gradient: LinerGradientColor.liner,
            ),
            child: SizedBox(
              height: 98.99,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const WeatherDaysCard(
                    text1: 'Now',
                    image: 'assets/images/sun.png',
                    text2: '19°',
                  );
                  //return null;
                },
                itemCount: 10,
              ),
            ),
          )),
    );
  }
}
