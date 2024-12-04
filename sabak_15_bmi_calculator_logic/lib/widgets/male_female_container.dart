import 'package:flutter/material.dart';

class MaleFemaleContainer extends StatelessWidget {
  const MaleFemaleContainer({
    super.key,
    required this.icon,
    required this.text,
    required this.iconColor,
    this.onTap,
    required this.iconSize,
    required this.textColor,
  });

  final IconData icon;
  final String text;
  final Color iconColor;
  final Color textColor;
  final void Function()? onTap;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
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
                color: iconColor,
                size: iconSize,
              ),
              Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



// AnimatedTextKit(
 //              animatedTexts: [
   //               RotateAnimatedText(
     //               text.toUpperCase(), // тексттерди чон тамга кылып берет
       //             textStyle: const TextStyle(
          //            color: Color(0xffceccd2),
            //          fontSize: 18,
              //        fontWeight: FontWeight.w500,
                //    ),
                  //),
                
                //totalRepeatCount: 3,
 //               pause: const Duration(milliseconds: 10000),
   //             displayFullTextOnTap: true,
     //           stopPauseOnTap: stopPauseOnTap,
       //       );