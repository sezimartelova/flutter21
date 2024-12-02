import 'package:flutter/material.dart';
import 'package:sabak_9_xylophone_ui/widgets/piono_key.dart';

class XylophonePage extends StatelessWidget {
  const XylophonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: const Column(
        children: [
          PianoKey(
            colors: Color(0xffEF443A),
          ),
          PianoKey(
            colors: Color(0xffef99700),
          ),
          PianoKey(
            colors: Color(0xffFFE93B),
          ),
          PianoKey(
            colors: Color(0xff4CB050),
          ),
          PianoKey(
            colors: Color(0xff2E968C),
          ),
          PianoKey(
            colors: Color(0xff2996F5),
          ),
          PianoKey(
            colors: Color(0xff9B28B1),
          ),
        ],
      ),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      backgroundColor: const Color(0xff363636),
      title: const Center(
          child: Text(
        'Flutter Xylophone',
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.w500,
        ),
      )),
    );
  }
}
