import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffECB90B),
      appBar: AppBar(

      centerTitle: true,
        backgroundColor: const Color(0xffECB90B),
        title: const Text('Тапшырма 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text (
              'I am Rich',
           style: GoogleFonts.sofia(fontSize:48),
            ),
            
            Image.asset('assets/almaz.png'),
            
          ],
        ),
      ),
    );
  }
}