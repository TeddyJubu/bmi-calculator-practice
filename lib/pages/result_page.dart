import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

import '../components/reusable_card.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OUTPUT'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "Your Result",
              style: kLargeNumber,
            ),
            Expanded(
              child: ReusableCard(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'NORMAL',
                      style: kLabelStyle.copyWith(
                        color: Colors.green,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      '26.7',
                      style: TextStyle(
                        fontSize: 90.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'lalala lalala lalala lalala lalala lalala lalala lalala',
                      style: kLabelStyle.copyWith(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
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
