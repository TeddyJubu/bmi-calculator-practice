import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    this.label,
    this.onTap,
  });
  final String label;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            label,
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
    );
  }
}
