import "package:dice_app/dice_roller.dart";
import "package:flutter/material.dart";

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: colors,
          ),
        ),
        child: const Center(
          child: DiceRoller(),
        ));
  }
}

List<Color> colorsHandler(
    {required MaterialColor color1, required MaterialColor color2}) {
  return [color1, color2];
}
