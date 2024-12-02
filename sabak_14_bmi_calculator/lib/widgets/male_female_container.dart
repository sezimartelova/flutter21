import 'package:flutter/material.dart';

class MaleFemaleContainer extends StatelessWidget {
  const MaleFemaleContainer({
    super.key,
    required this.icon,
    required this.text,
  });
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 177,
        width: 150,
        decoration: BoxDecoration(
          color: const Color(0xff0a001f),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
                size: 68,
              ),
              Text(
                text.toUpperCase(), // тексттерди чон тамга кылып берет
                style: const TextStyle(
                  color: Color(0xffceccd2),
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
