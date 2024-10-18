import 'package:flutter/material.dart';
import 'package:sabak_3_counter_app_stlw_stfw/core/theme.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: MyTheme().MyLightTheme,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 100;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme().myBodyBgkColor.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors. white,
        title: const Text(
          'Тапшырма',
          style: TextStyle(color: Colors. black),
        )
      ),
      body: Center(
      
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Container(
                width: 325,
                height:44,
                decoration: BoxDecoration(
                  color: const Color(0xffaaaaaa),
                  borderRadius: BorderRadius.circular(10),
                ),
          

                child: Center(
                  child: Text(
                    "Сан: $count",
                    style: MyTheme().MyLightTheme.textTheme.displayLarge
                  ),
                ),
             ),
        const SizedBox(height:41),
        Row(
        mainAxisAlignment: MainAxisAlignment.center,
          children:[
              Container(
                width: 80,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.remove, color: MyTheme().MyLightTheme.iconTheme),
              ),
              const SizedBox(width:40),

              Container(
                width: 80,
                height: 50,
                decoration:  BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                 child:const Icon(Icons.add, color: MyTheme(). MyLightTheme.iconTheme.color,
                 size :MyTheme().MyLightTheme.iconTheme.size),
              ),
        
          ],
          ],
        ),
  }
}       
        
    
     
