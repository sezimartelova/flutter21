import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xff056C5C ),

      appBar: AppBar(
        title: Text('Тапшырма 4'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(
              size: 100,
            
            ),
            Text('Sezim Artelova',         
            style: GoogleFonts.pacifico(textStyle: TextStyle
            (fontSize: 48,
              fontWeight: FontWeight.w400,
              color: Color(0xffF7F9F9),
              ),
            )
           ),
           SizedBox(
              height: 25,
            ),
            Text('Flutter Developer',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 28,
              color: Color(0xffF7F9F9),
            ),
            ),
            Divider(
              color: Color(0xffF7F9F9),
              thickness: 2,
              indent: 40,
              endIndent: 40,
            ),//Линия

            SizedBox(height: 23.5,),
            TextField(
              decoration:InputDecoration(
                hintText: '+996700 077486',
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder()

                  ),
                ),
                SizedBox(height: 24,),
            TextField(
              decoration:InputDecoration(
                hintText: 'sezim.artelova.kk@gmail.com',
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(),
              ),
             ),
          ],

        ),
      ),
    );
  }
}