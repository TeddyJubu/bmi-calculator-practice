import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';

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

class BottomCards extends StatelessWidget {
  BottomCards({this.labelText, this.topic, this.counter1, this.counter2});
  final String labelText;
  final int topic;
  final Function counter1;
  final Function counter2;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          labelText,
          style: kLabelStyle,
        ),
        Text(
          topic.toString(),
          style: kLargeNumber,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ///Minus Button
            RoundButton(
              buttonPress: counter2,
              icon: FontAwesomeIcons.minus,
            ),
            SizedBox(
              width: 15.0,
            ),

            ///plus button
            RoundButton(
              buttonPress: counter1,
              icon: FontAwesomeIcons.plus,
            ),
          ],
        )
      ],
    );
  }
}

///Round Buttons for bottom cards
class RoundButton extends StatelessWidget {
  RoundButton({this.icon, this.buttonPress});
  final IconData icon;
  final Function buttonPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        buttonPress();
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
