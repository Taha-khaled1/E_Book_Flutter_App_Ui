import 'package:flutter/material.dart';

class TextcustomHomeTopsection extends StatelessWidget {
  const TextcustomHomeTopsection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: RichText(
        text: TextSpan(
          style: TextStyle(fontSize: 40, color: Colors.black),
          children: [
            TextSpan(
              text: "What are you \nreading ",
            ),
            TextSpan(
              text: "today?",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
