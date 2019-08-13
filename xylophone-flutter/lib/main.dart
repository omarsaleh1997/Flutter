import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound (int num){
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded bulidKey ({Color color , int soundNum}){
      return
        Expanded(
             child: FlatButton(
          color:color,
          onPressed: (){
            playSound(soundNum);
          }),
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
            children: <Widget>[
                  bulidKey(color: Colors.red , soundNum:1),
                  bulidKey(color: Colors.orange , soundNum:2),
                  bulidKey(color: Colors.yellow , soundNum:3),
                  bulidKey(color: Colors.green , soundNum:4),
                  bulidKey(color: Colors.teal , soundNum:5),
                  bulidKey(color: Colors.blue , soundNum:6),
                  bulidKey(color: Colors.purple , soundNum:7),

        ],
          ),
        ),
      ),
    );
  }
}
