import 'package:flutter/material.dart';

import '../HomeScreen/home.dart';

class DoubelCostumText extends StatelessWidget {
  const DoubelCostumText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RichText(
          text: TextSpan(
            style: TextStyle(fontSize: 50, color: Colors.black),
            children: [
              TextSpan(
                text: "flamin",
              ),
              TextSpan(
                text: "go.",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Container(
          height: 65,
          width: 250,
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ))),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => home(),
                ),
              );
            },
            child: Text(
              'start reading',
              style: TextStyle(
                fontSize: 35,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
