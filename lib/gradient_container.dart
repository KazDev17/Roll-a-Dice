import 'package:flutter/material.dart';
import 'package:roll_a_dice/dice_roller.dart';


const beginAlignment = Alignment.bottomRight;
const endAlignment = Alignment.topLeft;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colorcode, {super.key /*required this.color*/});

  final List<Color> colorcode;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colorcode,
          begin: beginAlignment,
          end: endAlignment,
        ),
      ),

        //custom widget for dice roll functionality
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
