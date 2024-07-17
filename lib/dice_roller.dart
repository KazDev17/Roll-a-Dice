import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller
    extends StatefulWidget {
  const DiceRoller(
      {super.key});

  @override
  State<DiceRoller>
      createState() {
    return _DiceRollerState();
  }
}

//private class _DiceRollerState inherits attributes from DiceRoller Parent Class
class _DiceRollerState
    extends State<DiceRoller> {
  final randomizer = Random();
  var currentDiceRoll = 2;

  //method for what actions the button would perform when onPressed - randomizer
  void rollDice() {
    setState(
      () {
        currentDiceRoll = Random().nextInt(6) + 1; //randomize the dice roll. 0-5 + 1
      },
    );

    print('Changing Image......'); //print statement to see if our rollDice method executes.
  }

  @override
  Widget
      build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png', // call the function and randomize the dice roll
          width: 170,
        ),
        const SizedBox(height: 10.0),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 25),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
