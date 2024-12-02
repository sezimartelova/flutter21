import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  const Question({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 130),
      child: Text(
        textAlign: TextAlign.center,
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 32,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
