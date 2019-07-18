import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    onPressed: (){
                      playSound(1);
                    },
                    color: Colors.teal, child: null,
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: (){
                      playSound(2);
                    },
                    color: Colors.red, child: null,
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: (){
                      playSound(3);
                    },
                    color: Colors.blueGrey, child: null,
                  ),
                ),
                Expanded(
                  child: FlatButton(

                    onPressed: (){
                      playSound(4);
                    },
                    color: Colors.lightBlue, child: null,
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: (){
                      playSound(5);
                    },
                    color: Colors.greenAccent, child: null,
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: (){
                      playSound(6);
                    },
                    color: Colors.orange, child: null,
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: (){
                      playSound(7);
                    },
                    color: Colors.yellow, child: null,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void playSound(int num){
    final player = AudioCache();
    player.play('note$num.wav');
  }
}
