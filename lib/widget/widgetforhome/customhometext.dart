import 'package:flutter/material.dart';

class customhometextdownsection extends StatelessWidget {
  const customhometextdownsection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(color: Colors.black, fontSize: 27),
        children: [
          TextSpan(text: "Continue "),
          TextSpan(
            text: "reading...",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
          ),
        ],
      ),
    );
  }
}
