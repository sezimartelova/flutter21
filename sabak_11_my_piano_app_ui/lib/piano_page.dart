import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:sabak_11_my_piano_app_ui/widgets/black_piano_key.dart';
import 'package:sabak_11_my_piano_app_ui/widgets/white_piano_key.dart';

class PianoPage extends StatelessWidget {
  const PianoPage({super.key});

  @override
  Widget build(BuildContext context) {
    AudioPlayer nota = AudioPlayer();
    return Scaffold(
        appBar: myAppBar(),
        body: Column(
          children: [
            const Spacer(),
            Stack(
              children: [
                Row(
                  children: [
                    WhitePianoKey(
                      text: 'f1',
                      onPressed: () => nota.play(AssetSource('nota/do.wav')),
                    ),
                    WhitePianoKey(
                      text: 'f2',
                      onPressed: () => nota.play(AssetSource('nota/re.wav')),
                    ),
                    WhitePianoKey(
                      text: 'f3',
                      onPressed: () => nota.play(AssetSource('nota/mi.wav')),
                    ),
                    WhitePianoKey(
                      text: 'f4',
                      onPressed: () => nota.play(AssetSource('nota/fa.wav')),
                    ),
                    WhitePianoKey(
                      text: 'f5',
                      onPressed: () => nota.play(AssetSource('nota/so.wav')),
                    ),
                    WhitePianoKey(
                      text: 'f6',
                      onPressed: () => nota.play(AssetSource('nota/la.wav')),
                    ),
                    WhitePianoKey(
                      text: 'f7',
                      onPressed: () => nota.play(AssetSource('nota/si.wav')),
                    ),
                    WhitePianoKey(
                      text: 'f1',
                      onPressed: () => nota.play(AssetSource('nota/do.wav')),
                    ),
                    WhitePianoKey(
                      text: 'f2',
                      onPressed: () => nota.play(AssetSource('nota/re.wav')),
                    ),
                    WhitePianoKey(
                      text: 'f3',
                      onPressed: () => nota.play(AssetSource('nota/mi.wav')),
                    ),
                    WhitePianoKey(
                      text: 'f4',
                      onPressed: () => nota.play(AssetSource('nota/fa.wav')),
                    ),
                    WhitePianoKey(
                      text: 'f5',
                      onPressed: () => nota.play(AssetSource('nota/so.wav')),
                    ),
                    WhitePianoKey(
                      text: 'f6',
                      onPressed: () => nota.play(AssetSource('nota/la.wav')),
                    ),
                    WhitePianoKey(
                      text: 'f7',
                      onPressed: () => nota.play(AssetSource('nota/si.wav')),
                    ),
                  ],
                ),
                BlackPianoKey(
                  left: 40,
                  text: 'f1',
                  onPressed: () => nota.play(AssetSource('nota/do.wav')),
                ),
                BlackPianoKey(
                  left: 106,
                  text: 'f2',
                  onPressed: () => nota.play(AssetSource('nota/re.wav')),
                ),
                BlackPianoKey(
                  left: 240,
                  text: 'f3',
                  onPressed: () => nota.play(AssetSource('nota/mi.wav')),
                ),
                BlackPianoKey(
                  left: 303,
                  text: 'f4',
                  onPressed: () => nota.play(AssetSource('nota/fa.wav')),
                ),
                BlackPianoKey(
                  left: 367,
                  text: 'f5',
                  onPressed: () => nota.play(AssetSource('nota/so.wav')),
                ),
                BlackPianoKey(
                  left: 500,
                  text: 'f1',
                  onPressed: () => nota.play(AssetSource('nota/la.wav')),
                ),
                BlackPianoKey(
                  left: 565,
                  text: 'f2',
                  onPressed: () => nota.play(AssetSource('nota/si.wav')),
                ),
                BlackPianoKey(
                  left: 695,
                  text: 'f3',
                  onPressed: () => nota.play(AssetSource('nota/do.wav')),
                ),
                BlackPianoKey(
                  left: 760,
                  text: 'f4',
                  onPressed: () => nota.play(AssetSource('nota/re.wav')),
                ),
                BlackPianoKey(
                  left: 825,
                  text: 'f5',
                  onPressed: () => nota.play(AssetSource('nota/mi.wav')),
                )
              ],
            )
          ],
        ));
  }

  AppBar myAppBar() {
    //ExtractWidget
    return AppBar(
      backgroundColor: Colors.black,
      centerTitle: true, //Текстти ортого алып келуунун бир жолу
      title: const Text(
        'My Piano App',
        style: TextStyle(
          color: Colors.white,
          fontSize: 32,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
