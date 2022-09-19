import 'package:flutter/material.dart';

import '../../constant/models.dart';
import '../../screen/DetalisScreen/detelis.dart';
import 'showbook.dart';

class DesinEbook extends StatelessWidget {
  const DesinEbook({
    required this.index,
    Key? key,
    required this.xc,
  }) : super(key: key);
  final int index;
  final List<X> xc;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => DetalisSecreen(
          imag: xc[index].image,
          name: xc[index].namebook,
          scorr: xc[index].reating,
        ),
      )),
      child: showbook(
        image: xc[index].image,
        namebook: xc[index].namebook,
        reating: xc[index].reating,
        undernamebook: xc[index].undernamebook,
      ),
    );
  }
}
