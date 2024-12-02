import 'package:flutter/material.dart';
import 'package:sabak_13_test_game_logic/oop_for_quize.dart';
import 'package:sabak_13_test_game_logic/widgets/custom_button.dart';
import 'package:sabak_13_test_game_logic/widgets/question.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int questionNumber = 0;
  int tuuraJoop = 0;
  int tuuraEmesjoop = 0;
  List<bool> allAnswers = [];

  questionAnswer(bool isTrue) {
    if (quizeList[questionNumber].answer == isTrue) {
      tuuraJoop++;
      questionNumber++;
      allAnswers.add(true);
    } else if (quizeList[questionNumber].answer == isTrue) {
      tuuraEmesjoop++;
      questionNumber++;
      allAnswers.add(false);
    }
    if (questionNumber >= quizeList.length) {
      questionNumber = quizeList.length - 1;
      showTestDialog(context);
    }
    setState(
        () {}); //build методду кайра-кайра чакырат,stateтин ичинде болот дайыма
  }

  Future<void> showTestDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              title: Row(
                children: [
                  Text(
                    'Туура жооп: $tuuraJoop',
                    style: const TextStyle(color: Colors.green),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    'Ката жооп: $tuuraEmesjoop',
                    style: const TextStyle(
                      color: Colors.red,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    questionNumber = 0;
                    tuuraJoop = 0;
                    tuuraEmesjoop = 0;
                    allAnswers.clear();
                    Navigator.pop(context);

                    setState(() {});
                  },
                  child: const Text('Баштоо'),
                )
              ]);
        });
  }

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
          Question(
            text: quizeList[questionNumber].question,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomButton(
            text: 'Туура',
            color: const Color(0xff4cb050),
            onPressed: () {
              questionAnswer(true);
            },
          ),
          const SizedBox(
            height: 30,
          ),
          CustomButton(
            text: 'Туура эмес',
            color: const Color(0xffef443a),
            onPressed: () {
              questionAnswer(false);
            },
          ),
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
    return const Text('Кыргызстанда 7 область бар',
        style: TextStyle(
          color: Colors.white,
          fontSize: 32,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.center);
  }
}
