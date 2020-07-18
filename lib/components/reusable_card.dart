import 'package:flutter/material.dart';

int weight = 60;

///empty boxes .......................
class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild, this.onPressCode});

  final Color colour;
  final Widget cardChild;
  final Function onPressCode;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressCode,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
