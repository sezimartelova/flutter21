import 'package:flutter/material.dart';

class WeightAgeContainer extends StatelessWidget {
  const WeightAgeContainer({
    super.key,
    required this.text,
    required this.san,
    required this.iconAdd,
    required this.iconRemove,
  });
  final String text;
  final int san;
  final IconData iconAdd;
  final IconData iconRemove;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 177,
      width: 150,
      decoration: BoxDecoration(
        color: const Color(0xff0a001f),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(
            text.toUpperCase(),
            style: const TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
          ),
          Text(
            san.toString(),
            style: const TextStyle(
                color: Colors.white, fontSize: 40, fontWeight: FontWeight.w500),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                color: Colors.red,
                icon: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    iconRemove,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {},
              ),
              IconButton(
                color: Colors.red,
                icon: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    iconAdd,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
