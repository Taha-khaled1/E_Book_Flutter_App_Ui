import 'package:flutter/material.dart';

import '../../constant/listcx.dart';
import 'chaptercard.dart';

class Section extends StatelessWidget {
  const Section({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(15),
        width: double.infinity,
        child: ListView.builder(
          itemCount: cxc().tx.length,
          itemBuilder: (BuildContext context, int index) {
            var cx = cxc().tx;
            return ChapterCard(
              name: cx[index].name,
              tag: cx[index].tag,
              chapterNumber: cx[index].intt,
              press: () {},
            );
          },
        ),
      ),
    );
  }
}
