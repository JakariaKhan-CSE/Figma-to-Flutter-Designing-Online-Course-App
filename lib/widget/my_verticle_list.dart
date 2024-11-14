import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MyVerticleList extends StatelessWidget {
  const MyVerticleList(
      {super.key,
      required this.courseImage,
      required this.courseTitle,
      required this.courseDuration,
      required this.rating});

  final String courseImage, courseTitle, courseDuration;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8),
      child: SizedBox(
        height: 134,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Container(height: 92,
            width: MediaQuery.of(context).size.width -
                (MediaQuery.of(context).size.width*0.13), // 0.03 change to 0.13 see carefully in image
            decoration: BoxDecoration(
              color: Color(0xFF3E3A6D),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  spreadRadius: 0,
                  blurRadius: 13,
                  offset: Offset(0, 4)
                )
              ]
            ),child: Padding(
                  padding: EdgeInsets.only(left: 26, bottom: 19),
                child: Row(
                  children: [
                    Container(
                      height: 115,  // this data get from figma design
                      width: 115,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(courseImage))
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(courseTitle,style: GoogleFonts.roboto(  // import before use googlefont
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white
                        )),
                        Text(courseDuration,style: GoogleFonts.roboto(  // import before use googlefont
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF8C8C8C)
                        )),
                        RatingBar.builder(
                            initialRating: rating,
                            minRating: 1,
                            allowHalfRating: true,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 18,  // get star icon size from figma design
                            itemPadding: EdgeInsets.symmetric(horizontal: 1),
                            itemBuilder: (context, index) =>
                            Icon(Icons.star, color: Color(0xFFF4C465),),
                            onRatingUpdate: (value) {
                              print(value);
                            },)
                      ],
                    ),
                    )
                  ],
                ),
              ),),
            
            Positioned(
                bottom: 34,
                right: 0,
                child: Container(
                  height: MediaQuery.of(context).size.width*0.06,
                  width: MediaQuery.of(context).size.width*0.06,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFEB53A2)
                  ),
                  child: Icon(Icons.play_arrow, color: Colors.white,size: 12,),
                ))
            

          ],
        ),
      ),
    );
  }
}
