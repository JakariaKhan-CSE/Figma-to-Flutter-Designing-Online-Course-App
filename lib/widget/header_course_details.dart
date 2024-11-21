import 'package:flutter/material.dart';
class headerpart_course_details extends StatelessWidget {
  const headerpart_course_details({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 392,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(22),
            bottomRight: Radius.circular(22),
          ),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(1, 0.0),
              colors: [
                Color(
                    0xFFF4C465), // this color code get from figma design linear color(combination two color)
                Color(0xFFC63956),
              ]),
          image: DecorationImage(
              alignment: Alignment
                  .bottomRight, // very useful for image alignment
              image: AssetImage('assets/images/img_saly36.png'))),
    );
  }
}