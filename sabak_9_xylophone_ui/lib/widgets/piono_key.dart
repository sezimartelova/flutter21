import 'package:flutter/material.dart';

class PianoKey extends StatelessWidget {
  const PianoKey({
    super.key,
    required this.colors,
    //required this.on.Tap,
  });
  final Color colors;
  //final void Function()? onTap

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 91,
      decoration: BoxDecoration(color: colors),
    );
  }
}
