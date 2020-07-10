import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';
import 'reusable_card.dart';

const reusableCardColor = 0xff1D1F33;
const bottomButtonColor = Color(0xffeb1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    cardChild: TopCards(
                      icon: FontAwesomeIcons.mars,
                      text: "MALE",
                    ),
                    colour: Color(reusableCardColor),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardChild: TopCards(
                      icon: FontAwesomeIcons.venus,
                      text: "FEMALE",
                    ),
                    colour: Color(reusableCardColor),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: Color(reusableCardColor),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: Color(reusableCardColor),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: Color(reusableCardColor),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 70.0,
            width: double.infinity,
            margin: EdgeInsets.only(top: 10.0),
            color: bottomButtonColor,
          ),
        ],
      ),
    );
  }
}
