import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class middlepart_course_details extends StatelessWidget {
  const middlepart_course_details({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 115,
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/images/img_user1.png'))),
                ),
              ),
              Positioned(
                  left:
                  24, //45/2  akta image arektar half size niye ase
                  child: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/img_user2.png'))),
                  )),
              Positioned(
                  left: 45,
                  child: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/img_user3.png'))),
                  )),
              Positioned(
                  left: 70,
                  child: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/img_user4.png'))),
                  ))
            ],
          ),
        ),
        SizedBox(
          width: 12,
        ),
        Text(
          '+28K Members',
          style: GoogleFonts.roboto(
              fontSize: 18, color: Color(0xFFCACACA)),
        ),
        // SizedBox(width: 68,),

        Container(
          width: 54,
          height: 47,
          decoration: BoxDecoration(
              color: Color(0xFF353567),
              borderRadius: BorderRadius.circular(6)),
          child: Image.asset(
            'assets/icon/like.png',
            scale: 22,
            color: Colors.white,
          ), // scale is very useful to decrease image size
        ),
      ],
    );
  }
}