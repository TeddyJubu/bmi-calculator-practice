import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'roundbutton.dart';

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
