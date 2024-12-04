import 'package:flutter/material.dart';
import 'package:sabak_15_bmi_calculator_logic/methods/alert_dialog.dart';
import 'package:sabak_15_bmi_calculator_logic/widgets/height_container.dart';
import 'package:sabak_15_bmi_calculator_logic/widgets/male_female_container.dart';
import 'package:sabak_15_bmi_calculator_logic/widgets/weight_age_container.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isMale = false;
  int height = 180;
  int weight = 60;
  int age = 28;

  void maleFun() {
    setState(() {
      isMale = !isMale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff221935),
        appBar: _myAppBar(),
        body: SingleChildScrollView(
          //
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaleFemaleContainer(
                    onTap: () => maleFun(),
                    icon: Icons.male,
                    iconSize: isMale ? 68 : 100,
                    iconColor: isMale ? Colors.white : Colors.red,
                    text: 'male',
                    textColor: isMale ? const Color(0xffceccd2) : Colors.red,
                  ),
                  const SizedBox(width: 35),
                  MaleFemaleContainer(
                    onTap: () => maleFun(),
                    icon: Icons.female,
                    iconSize: isMale ? 100 : 68,
                    iconColor: isMale ? Colors.red : Colors.white,
                    text: 'female',
                    textColor: isMale ? Colors.red : const Color(0xffceccd2),
                  ),
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              HeightContainer(
                text: 'height',
                san: height,
                sm: 'sm',
                widget: Slider.adaptive(
                  thumbColor: const Color(0xffff0f65),
                  activeColor: Colors.white,
                  inactiveColor: Colors.grey,
                  min: 0,
                  max: 300,
                  value: height.toDouble(),
                  onChanged: (v) {
                    height = v.toInt();
                    setState(() {});
                    print(height);
                  },
                ),
              ),
              const SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  WeightAgeContainer(
                    onPressedRemoveIcon: () => setState(() => weight--),
                    onPressedAddIcon: () => setState(() => weight++),
                    text: 'weight',
                    san: weight,
                    iconAdd: Icons.add,
                    iconRemove: Icons.remove,
                  ),
                  const SizedBox(width: 25),
                  WeightAgeContainer(
                    onPressedRemoveIcon: () => setState(() => age--),
                    onPressedAddIcon: () => setState(() => age++),
                    text: 'age',
                    san: age,
                    iconAdd: Icons.add,
                    iconRemove: Icons.remove,
                  ),
                ],
              )
            ]),
          ),
        ),
        bottomNavigationBar: GestureDetector(
          onTap: () {
            final result = (weight / ((height / 100) * (height / 100)));
            if (result > 0 && result <= 18.5) {
              print('Сиз арыксыз');
              AlertClass().showMyDialog(context, text: 'Сиз арыксыз');
            } else if (result > 18.5 && result <= 25) {
              AlertClass()
                  .showMyDialog(context, text: 'Сиздин салмагыныз нормалдуу');
            } else if (result > 25 && result <= 30) {
              AlertClass()
                  .showMyDialog(context, text: 'Сиз ашыкча салмактуусуз');
            } else if (result > 30 && result <= 35) {
              AlertClass().showMyDialog(context, text: 'Сиз семизсиз');
            } else if (result > 35 && result <= 40) {
              AlertClass().showMyDialog(context, text: 'Ото семизсиз');
            }
          },
          child: Container(
            decoration: const BoxDecoration(
                color: Color(0xffFF0F65),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            height: 73,
            child: const Center(
              child: Text(
                'CALCULATOR',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ));
  }

  AppBar _myAppBar() {
    return AppBar(
      backgroundColor: const Color(0xff221935),
      title: const Center(
        child: Text(
          'BMI CALCULATOR',
          style: TextStyle(
              color: Color(0xffffffff),
              fontSize: 22,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
