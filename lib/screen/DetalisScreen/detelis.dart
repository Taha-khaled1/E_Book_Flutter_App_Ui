import 'package:flutter/material.dart';

import '../../widget/widgetfordetils/BodyTopsection.dart';
import '../../widget/widgetfordetils/Section.dart';

// ignore: must_be_immutable
class DetalisSecreen extends StatelessWidget {
  String imag;
  String name;
  double scorr;
  DetalisSecreen({required this.imag, required this.name, required this.scorr});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
                image: DecorationImage(
                    image: AssetImage("images/bg.png"),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter),
              ),
              child: BodyTopsection(imag: imag, name: name, scorr: scorr),
            ),
            Section(),
          ],
        ),
      ),
    );
  }
}
