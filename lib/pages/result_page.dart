import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

import '../components/reusable_card.dart';

class Result extends StatelessWidget {
  final String result;
  final String bmi;
  final String interpretation;
  Result({this.bmi, this.interpretation, this.result});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                "Your Result",
                style: kLargeNumber.copyWith(fontWeight: FontWeight.w500),
              ),
            ),
            Expanded(
              child: ReusableCard(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      result.toUpperCase(),
                      style: kLabelStyle.copyWith(
                        color: Color(0xFF24D876),
                        fontWeight: FontWeight.w700,
                        fontSize: 25.0,
                      ),
                    ),
                    Text(
                      bmi,
                      style: TextStyle(
                        fontSize: 90.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        interpretation,
                        style: kLabelStyle.copyWith(
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
                colour: kActiveCardColor,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                child: Center(
                  child: Text(
                    "RE-CALCULATE",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                height: 70.0,
                width: double.infinity,
                margin: EdgeInsets.only(top: 10.0),
                color: kBottomButtonColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
