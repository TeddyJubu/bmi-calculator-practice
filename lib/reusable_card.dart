import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';

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

///Bottom two card's contents
ReusableCard bottomCards({String labelText}) {
//    IconData rightIcon;
//    IconData leftIcon;
  int weight = 60;

  return ReusableCard(
    colour: kActiveCardColor,
    cardChild: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          labelText,
          style: kLabelStyle,
        ),
        Text(
          weight.toString(),
          style: kLargeNumber,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RoundButton(
              icon: FontAwesomeIcons.plus,
            ),
            SizedBox(
              width: 15.0,
            ),
            RoundButton(
              icon: FontAwesomeIcons.minus,
            ),
          ],
        )
      ],
    ),
  );
}

///Round Buttons for bottom cards
class RoundButton extends StatelessWidget {
  RoundButton({this.icon});
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        print("hi");
      },
      child: Icon(
        icon,
        size: 20.0,
      ),
      fillColor: Color(0xFF4C4F5E),
      elevation: 6.0,
      shape: CircleBorder(),
      constraints: BoxConstraints(minHeight: 40.0, minWidth: 40.0),
    );
  }
}
