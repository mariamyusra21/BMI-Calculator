import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {required this.colour, required this.cardChild, required this.onPress});
  final Color colour;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPress();
      },
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(13.0),
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(8.0)),
      ),
    );
  }
}
