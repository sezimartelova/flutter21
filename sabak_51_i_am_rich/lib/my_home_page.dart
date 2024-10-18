import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(220, 186, 108, 7),
      appBar: AppBar(
        backgroundColor: const Color(0xffECB90B),
         title:const Text('Тапшырманы кайталоо'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Hello World'),
            Image.asset(
              'assets/world.jpg',
            
            ),
            
          ],
        ),
      ),
    );
  }
}