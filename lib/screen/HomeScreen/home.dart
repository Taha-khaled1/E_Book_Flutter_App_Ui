import 'package:ebookshope/constant/Listx.dart';

import 'package:flutter/material.dart';
import '../../widget/widgetforhome/DesinEbook.dart';
import '../../widget/widgetforhome/TextcustomHomeTopsection.dart';
import '../../widget/widgetforhome/aftercontunereading.dart';
import '../../widget/widgetforhome/bestofthedaycard.dart';
import '../../widget/widgetforhome/customhometext.dart';

class home extends StatefulWidget {
  home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topLeft,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage("images/main_page_bg.png"),
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.topCenter),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextcustomHomeTopsection(),
                    Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 300,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: Z().xc.length,
                        itemBuilder: (BuildContext context, int index) {
                          var xc = Z().xc;
                          return DesinEbook(
                            xc: xc,
                            index: index,
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    bestofthedaycard(),
                    customhometextdownsection(),
                    SizedBox(height: 20),
                    aftercontenuereading(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
