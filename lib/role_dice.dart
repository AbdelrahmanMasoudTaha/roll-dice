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
        Image.asset('images/dice-$activeDice.png',width: 200,),
        const SizedBox(
          height: 20,
        ),
        OutlinedButton(
          onPressed: rollIt,

          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
          child: const Text('ROLL ME!'),
        )
      ],
    );
  }
}
