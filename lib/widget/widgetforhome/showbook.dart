import 'package:ebookshope/widget/widgetforhome/towside.dart';
import 'package:flutter/material.dart';
import 'bookreating.dart';

// ignore: must_be_immutable
class showbook extends StatelessWidget {
  String image;
  String namebook;
  String undernamebook;
  double reating;
  showbook(
      {required this.image,
      required this.namebook,
      required this.reating,
      required this.undernamebook});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 8),
      child: Container(
        height: 265,
        width: 245,
        child: Stack(
          children: [
            Positioned(
              top: 15,
              right: 15,
              bottom: 10,
              left: 15,
              child: Container(
                height: 235,
                width: 215,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(35),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        offset: Offset(0, 10),
                      ),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(top: 13, right: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 7),
                        child: BookRating(
                          score: reating,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: -5,
              left: -20,
              child: Image.asset(
                image,
                width: 165,
              ),
            ),
            Positioned(
              top: 160,
              left: 17,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                            text: namebook,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            )),
                        TextSpan(
                          text: undernamebook,
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 13,
              bottom: 9,
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 410,
                    alignment: Alignment.center,
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Detalis',
                          style: TextStyle(color: Colors.black),
                        )),
                  ),
                  Container(
                    width: 100,
                    child: TwoSideRoundedButton(
                      text: 'Read',
                      press: () {},
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
