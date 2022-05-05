// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Soundbar",
            ),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, sound: 1),
              buildKey(color: Colors.blue, sound: 2),
              buildKey(color: Colors.yellow, sound: 3),
              buildKey(color: Colors.green, sound: 4),
              buildKey(color: Colors.orange, sound: 5),
              buildKey(color: Colors.deepPurpleAccent, sound: 6),
              buildKey(color: Colors.purple, sound: 7),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildKey({color, sound}) {
  return Expanded(
    child: TextButton(
      style: TextButton.styleFrom(
        backgroundColor: color,
      ),
      onPressed: () {
        AudioCache player = AudioCache();
        // final player = AudioCache();
        player.play("note$sound.wav");
      },
      child: Text(""),
    ),
  );
}
