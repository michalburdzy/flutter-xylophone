import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  play(String path) async {
    await player.play(path);
  }

  var paths2 = [
    {'path': 'note1.wav', 'color': Colors.red},
    {'path': 'note2.wav', 'color': Colors.green},
    {'path': 'note3.wav', 'color': Colors.blue},
    {'path': 'note7.wav', 'color': Colors.purple},
    {'path': 'note4.wav', 'color': Colors.orange},
    {'path': 'note5.wav', 'color': Colors.yellow},
    {'path': 'note6.wav', 'color': Colors.pink},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: paths2
                  .map((path) => Expanded(
                        child: FlatButton(
                          onPressed: () => play(path['path']),
                          color: path['color'],
                        ),
                      ))
                  .toList()),
        ),
      ),
    );
  }
}
