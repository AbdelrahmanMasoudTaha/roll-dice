import 'package:flutter/cupertino.dart';
import 'dart:math';

import 'package:flutter/material.dart';

class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<RollDice> createState() => _RollDiceState();
}

var rand = Random();

class _RollDiceState extends State<RollDice> {
  var activeDice = 1;
  void rollIt() {
    setState(() {
      activeDice = rand.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          transitionBuilder: (child, animation) {
            return RotationTransition(
              turns: Tween<double>(begin: 0.8, end: 1).animate(animation),
              child: child,
            );
          },
          child: Image.asset(
            'images/dice-$activeDice.png',
            width: 200,
            key: ValueKey(rand.nextInt(100) / activeDice),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        OutlinedButton(
          onPressed: rollIt,
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle:
                  const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          child: const Text('ROLL ME!'),
        )
      ],
    );
  }
}
