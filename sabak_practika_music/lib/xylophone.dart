import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Xylophone extends StatefulWidget {
  const Xylophone({super.key});

  @override
  State<Xylophone> createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Xylophone music'),
        backgroundColor: const Color.fromARGB(255, 248, 247, 247),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                player.play(
                  AssetSource('do.wav'),
                );
              },
              child: Container(
                width: double.infinity,
                color: Colors.red,
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                player.play(
                  AssetSource('re.wav'),
                );
              },
              child: Container(
                width: double.infinity,
                color: Colors.blue,
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                player.play(
                  AssetSource('mi.wav'),
                );
              },
              child: Container(
                width: double.infinity,
                color: Colors.green,
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                player.play(
                  AssetSource('fa.wav'),
                );
              },
              child: Container(
                width: double.infinity,
                color: Colors.yellow,
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                player.play(
                  AssetSource('so.wav'),
                );
              },
              child: Container(
                width: double.infinity,
                color: Colors.pink,
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                player.play(
                  AssetSource('la.wav'),
                );
              },
              child: Container(
                width: double.infinity,
                color: Colors.grey,
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                player.play(
                  AssetSource('si.wav'),
                );
              },
              child: Container(
                width: double.infinity,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
