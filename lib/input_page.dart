import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';
import 'reusable_card.dart';

const reusableCardColor = 0xff1D1F33;
const inactiveCardColor = 0xFF111328;
const bottomButtonColor = Color(0xffeb1555);
enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender gender;
  Color maleCardColor = Color(inactiveCardColor);
  Color femaleCardColor = Color(inactiveCardColor);
  void updateColor(Gender gender) {
    //male pressed
    if (gender == Gender.male) {
      if (maleCardColor == Color(inactiveCardColor)) {
        maleCardColor = Color(reusableCardColor);
        femaleCardColor = Color(inactiveCardColor);
      } else {
        maleCardColor = Color(inactiveCardColor);
      }
    }
    //female pressed
    if (gender == Gender.female) {
      if (femaleCardColor == Color(inactiveCardColor)) {
        femaleCardColor = Color(reusableCardColor);
        maleCardColor = Color(inactiveCardColor);
      } else {
        femaleCardColor = Color(inactiveCardColor);
      }
    }
  }

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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.male);
                      });
                    },
                    child: ReusableCard(
                      cardChild: TopCards(
                        icon: FontAwesomeIcons.mars,
                        text: "MALE",
                      ),
                      colour: maleCardColor,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.female);
                      });
                    },
                    child: ReusableCard(
                      cardChild: TopCards(
                        icon: FontAwesomeIcons.venus,
                        text: "FEMALE",
                      ),
                      colour: femaleCardColor,
                    ),
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
