import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int num) {
    final assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(Audio("assets/note$num.wav"));

  }

  Expanded buildKey(int num , Color bgColor) {
    return
    Expanded(
      child: TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(bgColor),
            enableFeedback: false
        ),
        onPressed: () {
          playSound(num);
        },

      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(1,Colors.red),
              buildKey(2,Colors.orange),
              buildKey(3,Colors.yellow),
              buildKey(4,Colors.green),
              buildKey(5,Colors.teal),
              buildKey(6,Colors.blue),
              buildKey(7,Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
