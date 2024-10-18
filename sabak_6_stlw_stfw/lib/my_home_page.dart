import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int a=0;
    return  Scaffold(
      appBar:AppBar (
        title: const Text('StatelessWidget VS StatfulWidget'),
      ),
      body: Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello Flutter'),
            Text('$a'),
            ElevatedButton.icon 
            (onPressed:(){
              setState((){
                 a++;
              }),
             
              print(a);
            }, 
            label: const Icon(Icons.add)),
          ],
          ),
      ),
    );
  }
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}