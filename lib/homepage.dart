import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String dice1 = "Images/dice1.png";
  String dice2 = "Images/dice1.png";
  int sum = 2;
  List<String> diceImages = [
    "Images/dice1.png",
    "Images/dice2.png",
    "Images/dice3.png",
    "Images/dice4.png",
    "Images/dice5.png",
    "Images/dice6.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Task1: Dice Roller')),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text('Sum Is: $sum', style: const TextStyle(fontSize: 20)),
        const SizedBox(height: 20),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(dice1),
          const SizedBox(width: 20),
          Image.asset(dice2),
        ])
      ])),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          int randomNumber1 = Random().nextInt(6);
          int randomNumber2 = Random().nextInt(6);
          setState(() {
            dice1 = diceImages[randomNumber1];
            dice2 = diceImages[randomNumber2];
            sum = randomNumber1 + randomNumber2 + 2;
          });
        },
        label: const Text('Roll Dice'),
      ),
    );
  }
}
