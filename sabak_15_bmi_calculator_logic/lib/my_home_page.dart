import 'package:flutter/material.dart';
import 'package:sabak_15_bmi_calculator_logic/widgets/height_container.dart';
import 'package:sabak_15_bmi_calculator_logic/widgets/male_female_container.dart';
import 'package:sabak_15_bmi_calculator_logic/widgets/weight_age_container.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff221935),
        appBar: _myAppBar(),
        body: const Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaleFemaleContainer(
                  onTap: () => maleFun(),
                  icon: Icons.male,
                  text: 'male',
                  iconColor: isMale ? Colors.white : Colors.red,
                  iconSize: isMale ? 68 : 100,
                  stopPauseOnTap: isMale ? false : true,
                ),
                SizedBox(width: 35),
                MaleFemaleContainer(
                  onTap: () => maleFun(),
                  icon: Icons.female,
                  text: 'female',
                  iconColor: isMale ? Colors.red : Colors.white,
                  iconSize: isMale ? 100 : 68,
                  stopPauseOnTap: isMale ? true : false,
                ),
              ],
            ),
            SizedBox(
              height: 18,
            ),
            HeightContainer(
              text: 'height',
              textSm: '180sm',
            ),
            SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                WeightAgeContainer(
                  text: 'weight',
                  san: 60,
                  iconAdd: Icons.add,
                  iconRemove: Icons.remove,
                ),
                SizedBox(width: 25),
                WeightAgeContainer(
                  text: 'age',
                  san: 28,
                  iconAdd: Icons.add,
                  iconRemove: Icons.remove,
                ),
              ],
            )
          ]),
        ),
        bottomNavigationBar: Container(
          color: const Color(0xffFF0F65),
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
