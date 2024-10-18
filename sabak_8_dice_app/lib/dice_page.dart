import 'package:flutter/material.dart';
import 'package:sabak_8_dice_app/widgets/image_widget.dart';

import 'widgets/custom_button.dart';

class DicePage extends StatelessWidget {
  const DicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFE93B),
      appBar: AppBar(
        backgroundColor:  Colors.white,
        title:const Center(
          child: Text('Dice App')
          ),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          /*Image.asset('assets/dice_1.png', 
          height: 100,),
         
          Image.asset('assets/dice_2.png', 
          height: 100,),
          */

        Row(
            children: [
              
               Expanded(child:ImageWidget(Image: 'assets/die_face_1.svg',),
            
               ),

              Expanded(child:ImageWidget(Image: 'assets/die_face_2.svg',)
               ),
              
            ],
          ),  
           const CustomButton(),
       ],
      ),
      
    );
  }
}

