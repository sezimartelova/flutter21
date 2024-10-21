import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sabak_8_dice_app/widgets/image_widget.dart';

import 'widgets/custom_button.dart';

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  //Diceтарды байлоо максатында озгормолорду тузуу
int leftDiceNumber = 6;
int  rightDiceNumber= 3;

//Дарт математикадан келген рандом классты переменныйга байлоо учун функция
void rollDice() {//функция
  setState(() {// Суроттордун озгоруп туруусу учун керек 
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;//Left Rigt озгормосуно Rabdom классына байладык
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(
        backgroundColor:  Colors.white,
        title:const Center(
          child: Text('Dice App')
          ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/bgc.jpg'),
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

               Row(
            children: [
              
               Expanded(child:ImageWidget(Image: 'assets/die_face_$leftDiceNumber.svg',),
            
               ),

              Expanded(child:ImageWidget(Image: 'assets/die_face_$rightDiceNumber.svg',),
               ),
              
            ],
          ),  
           CustomButton(onPressed: rollDice),
           
       ],
          ),
        ),
      ),
    );
  }
}

    

           
          
          /*Image.asset('assets/dice_1.png', 
          height: 100,),
         
          Image.asset('assets/dice_2.png', 
          height: 100,),
          */

       

