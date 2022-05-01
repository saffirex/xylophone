import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

final player = AudioCache();
Expanded keybuilder(Color colour, int tuneNumber) {
  return Expanded(
    child: TextButton(
      style: TextButton.styleFrom(
        onSurface: Color.fromARGB(255, 15, 13, 13),
        backgroundColor: colour,
        padding: EdgeInsets.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      onPressed: () {
        player.play('note$tuneNumber.wav'); //eg: note1.wav
      },
      child: Text(''),
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              keybuilder(Colors.purple.shade900, 1),
              keybuilder(Colors.indigo, 2),
              keybuilder(Colors.blue, 3),
              keybuilder(Colors.green, 4),
              keybuilder(Colors.yellow, 5),
              keybuilder(Colors.orange, 6),
              keybuilder(Colors.red, 7)
            ],
          ),
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}
