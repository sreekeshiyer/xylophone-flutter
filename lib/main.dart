import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int v) {
    final player = AudioCache();
    player.play('note$v.wav');
  }

  Expanded buildKey({Color color, int v}) {
    return (Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          playSound(v);
        },
        child: null,
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, v: 1),
              buildKey(color: Colors.orange, v: 2),
              buildKey(color: Colors.yellow, v: 3),
              buildKey(color: Colors.green, v: 4),
              buildKey(color: Colors.blue, v: 5),
              buildKey(color: Color(0xFF0039FF), v: 6),
              buildKey(color: Colors.purple, v: 7),
            ],
          ),
        ),
      ),
    );
  }
}
