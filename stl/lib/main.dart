import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.pink,
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: const Text(
            'Dicee',
          ),
        ),
        body: const DiceApp(),
      ),
    ),
  );
}

class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int rightimagenumber = 1;
  int leftimagenumber = 2;

  void changeDicee() {
    setState(() {
      leftimagenumber = Random().nextInt(6) + 1;
      rightimagenumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDicee();
                print('left button got pressed');
              },
              child: Image.asset('images/dice$leftimagenumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDicee();
                print('right button got pressed');
              },
              child: Image.asset('images/dice$rightimagenumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
