import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon, required this.onTap});

  final IconData icon;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: () {
        onTap();
      },
      elevation: 3.0,
      constraints: BoxConstraints.tightFor(width: 40.0, height: 40.0),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      focusColor: Colors.pink,
      hoverColor: Colors.white,
    );
  }
}
