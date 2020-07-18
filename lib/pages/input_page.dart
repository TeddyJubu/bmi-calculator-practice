import 'package:bmi_calculator/components/bottom-cards.dart';
import 'package:bmi_calculator/components/icon_content.dart';
import 'package:bmi_calculator/components/pink-button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/pages/result_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPressCode: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    cardChild: TopCards(
                      icon: FontAwesomeIcons.mars,
                      text: "MALE",
                    ),
                    colour: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPressCode: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    cardChild: TopCards(
                      icon: FontAwesomeIcons.venus,
                      text: "FEMALE",
                    ),
                    colour: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
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
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "HEIGHT",
                          style: kLabelStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(
                              height.toString(),
                              style: kLargeNumber,
                            ),
                            Text(
                              'cm',
                              style: kLabelStyle,
                            ),
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Colors.white,
                            inactiveTrackColor: Color(0xFF8D8E98),
                            thumbColor: kBottomButtonColor,
                            overlayColor: Color(0x29eb1555),
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 10.0),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 20.0),
                          ),
                          child: Slider(
                            value: height.toDouble(),
                            max: 220.0,
                            min: 120.0,
                            onChanged: (double value) {
                              setState(() {
                                height = value.round();
                              });
                            },
                          ),
                        )
                      ],
                    ),
                    colour: kActiveCardColor,
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
                    colour: kActiveCardColor,
                    cardChild: BottomCards(
                      labelText: "WEIGHT",
                      counter1: () {
                        setState(() {
                          weight++;
                        });
                      },
                      counter2: () {
                        setState(() {
                          weight--;
                        });
                      },
                      topic: weight,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColor,
                    cardChild: BottomCards(
                      topic: age,
                      labelText: "AGE",
                      counter1: () {
                        setState(() {
                          age++;
                        });
                      },
                      counter2: () {
                        setState(() {
                          age--;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            label: "CALCULATE",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Result();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
