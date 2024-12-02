import 'package:flutter/material.dart';

class BlackPianoKey extends StatelessWidget {
  const BlackPianoKey({
    super.key,
    this.left,
    this.right,
    required this.text,
    this.onPressed,
  });
  final double? left;
  final double? right;
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    var container = Container(
        width: 38.9,
        height: 127.64,
        decoration: BoxDecoration(
            color: Colors.black,
            border: Border.all(color: const Color(0xff171a26)),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(5),
            )),
        child: GestureDetector(
            onTap: onPressed,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  child: Text(
                    text,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 19.6,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            )));

    return Positioned(
      left: left,
      right: right,
      child: container,
    );
  }
}




/*child: GestureDetector(
              onTap: onPressed,
              child: Padding(
                  padding: const EdgeInsets.all(10),

*/
