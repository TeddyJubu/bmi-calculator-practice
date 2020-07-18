import 'package:flutter/material.dart';

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
