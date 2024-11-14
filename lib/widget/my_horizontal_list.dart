import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHorizontalList extends StatelessWidget {
  const MyHorizontalList(
      {super.key,
      required this.courseHeadline,
      required this.courseTitle,
      required this.courseImage,
      required this.startColor,
      required this.endColor});

  final String courseHeadline, courseTitle, courseImage;
  final int startColor,
      endColor; // becasue figma design have used linear color(2 color combination)
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 26), // get from figma design (two component space)
      child: Container(
        height: 349,  // this two value get from figma design
        width: 246,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19)
              ,gradient: LinearGradient(
            begin: Alignment.topLeft,
            // end:  Alignment(1, 0.0),
            colors: [
              Color(startColor),
              Color(endColor),

        ])
        ),
        child: Stack(
          children: [
            Positioned(
              // https://youtu.be/Egh_L1NnuQk?si=stFROntd3tj1SLOp 15:37
              left: 11,  // this value get from figma
                top: 15, // at first left side bar select design (approprite like Recommended test Container) hold alt outside container mouse hovar to show value
                right: 120,
                child: Container(
                  padding: EdgeInsets.all(10), // get 10 from figma design
                  height: 39,
                  width: 115,
                  decoration: BoxDecoration(
                    color: Color(0xFFAFA8EE), // be careful to add 0x before color code
                    borderRadius: BorderRadius.circular(36)
                  ),
                  child: Text(courseHeadline,style: GoogleFonts.roboto(  // import before use googlefont
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white
                  )),
                )),
            Positioned(
                left: 14,  // this value get from figma
                top: 80, // at first left side bar select design (approprite like Recommended test Container) hold alt outside container mouse hovar to show value
                right: 32,
                child: Text(courseTitle,style: GoogleFonts.roboto(  // import before use googlefont
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ))),
            Positioned(
              // this picture in figma design bottom r right er sathe lege ase
                bottom: 0, // at first left side bar select design (approprite like Recommended test Container) hold alt outside container mouse hovar to show value
                right: 0,
                child: Image.asset(courseImage,scale: 2,) // very useful scale for resize image based on need
            )
          ],
        ),
      ),

    );
  }
}
