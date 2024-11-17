import 'package:flutter/material.dart';
import 'package:sabak_12_test_game_ui/oop_for_quize.dart';
import 'package:sabak_12_test_game_ui/widgets/custom_button.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff363636),
      appBar: myAppBar(),
      body: Center(
          child: Column(
        //Row берсем тексттер горизонтально болот
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Questions(
            text: quizeList[2].question,
          ),
          const SizedBox(
            height: 153,
          ),
          CustomButton(
              text: quizeList[0].answer.toString(),
              color: const Color(0xff4cb050)),
          const SizedBox(
            height: 30,
          ),
          CustomButton(
              text: quizeList[0].answer.toString(),
              color: const Color(0xffef443a)),
        ],
      )),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      title: const Text(
        'Тапшырма 7',
        style: TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class Questions extends StatelessWidget {
  const Questions({
    super.key,
    required text,
  });

  @override
  Widget build(BuildContext context) {
    return const Text('Кыргызстанда 7 дубан бар',
        style: TextStyle(
          color: Colors.white,
          fontSize: 32,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.center);
  }
}
