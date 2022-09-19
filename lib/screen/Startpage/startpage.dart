import 'package:flutter/material.dart';
import 'DoubelCostumText.dart';

class pagehome extends StatelessWidget {
  const pagehome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("images/Bitmap.png"),
            fit: BoxFit.fill,
          )),
          child: DoubelCostumText(),
        ),
      ),
    );
  }
}
