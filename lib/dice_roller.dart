import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  List<String> dices = [
    'assets/images/dice-1.png',
    'assets/images/dice-2.png',
    'assets/images/dice-3.png',
    'assets/images/dice-4.png',
    'assets/images/dice-5.png',
    'assets/images/dice-6.png'
  ];

  int activeNumber = 0;
  void rollDice() {
    setState(() {
      activeNumber = Random().nextInt(5);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Image.asset(
        dices[activeNumber],
        width: 200,
      ),
      TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              backgroundColor: Colors.blue),
          child: const Text("Jogar dado"))
    ]);
  }
}
