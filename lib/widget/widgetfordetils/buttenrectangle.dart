import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  // final Function press;
  final double verticalPadding;
  final double horizontalPadding;
  final double fontSize;

  RoundedButton({
    required this.text,
    // required this.press,
    this.verticalPadding = 16,
    this.horizontalPadding = 30,
    this.fontSize = 16,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(vertical: 16),
      padding: EdgeInsets.symmetric(
          vertical: verticalPadding, horizontal: horizontalPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 15),
            blurRadius: 30,
            color: Color(0xFF666666).withOpacity(.11),
          ),
        ],
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
