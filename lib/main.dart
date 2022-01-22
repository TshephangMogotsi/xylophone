import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: TextButton(
           
            onPressed: () {
              final player = AudioCache();
              player.play('note1.wav');
            },
            child: const Text("Click me"),
          ),
        ),
      ),
    );
  }
}
