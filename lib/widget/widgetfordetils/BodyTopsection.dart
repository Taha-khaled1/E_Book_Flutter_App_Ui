import 'package:ebookshope/widget/widgetfordetils/buttenrectangle.dart';
import 'package:flutter/material.dart';

import '../../constant/colors.dart';
import '../widgetforhome/bookreating.dart';

class BodyTopsection extends StatelessWidget {
  const BodyTopsection({
    Key? key,
    required this.imag,
    required this.name,
    required this.scorr,
  }) : super(key: key);

  final String imag;
  final String name;
  final double scorr;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          bottom: 0,
          right: 0,
          child: Center(
            child: Image.asset(
              imag,
            ),
          ),
        ),
        Positioned(
          left: 20,
          top: 30,
          child: Text(
            name,
            style: TextStyle(fontSize: 38, color: Colors.black),
          ),
        ),
        Positioned(
          top: 120,
          left: 20,
          child: Container(
            width: MediaQuery.of(context).size.width * .3,
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * .02),
            child: Text(
              "When the earth was flat andeveryone wanted to win the gameof the best and people and winning with an A game with all the things you have.",
              maxLines: 5,
              style: TextStyle(
                fontSize: 15,
                color: kLightBlackColor,
              ),
              textAlign: TextAlign.start,
            ),
          ),
        ),
        Positioned(
          right: 0,
          left: 0,
          top: 100,
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border,
              size: 40,
            ),
          ),
        ),
        Positioned(
          right: 0,
          left: 0,
          top: 160,
          child: Center(
            child: BookRating(
              score: scorr,
            ),
          ),
        ),
        Positioned(
          left: 20,
          top: 230,
          child: Center(
            child: GestureDetector(
              onTap: () {},
              child: RoundedButton(text: '  Read  '),
            ),
          ),
        ),
      ],
    );
  }
}
