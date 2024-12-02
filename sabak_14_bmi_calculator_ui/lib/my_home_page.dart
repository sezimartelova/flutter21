import 'package:flutter/material.dart';
import 'package:sabak_14_bmi_calculator/widgets/height_container.dart';
import 'package:sabak_14_bmi_calculator/widgets/male_female_container.dart';
import 'package:sabak_14_bmi_calculator/widgets/weight_age_container.dart';

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
                  icon: Icons.male,
                  text: 'male',
                ),
                SizedBox(width: 35),
                MaleFemaleContainer(
                  icon: Icons.female,
                  text: 'female',
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
