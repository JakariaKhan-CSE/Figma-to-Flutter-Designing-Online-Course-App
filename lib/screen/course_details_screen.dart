import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/header_course_details.dart';
import '../widget/middlepart_course_details.dart';

class CourseDetailsScreen extends StatefulWidget {
  const CourseDetailsScreen({super.key});

  @override
  State<CourseDetailsScreen> createState() => _CourseDetailsScreenState();
}

class _CourseDetailsScreenState extends State<CourseDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
          child: ListView(
        children: [
          headerpart_course_details(),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
              bottom: 11,
              top: 22,
              right: 20
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  allowHalfRating: true,
                  direction: Axis.horizontal,
                  itemCount: 5,
                  itemSize: 18, // get star icon size from figma design
                  itemPadding: EdgeInsets.symmetric(horizontal: 1),
                  itemBuilder: (context, index) => Icon(
                    Icons.star,
                    color: Color(0xFFF4C465),
                  ),
                  onRatingUpdate: (value) {
                    print(value);
                  },
                ),
                SizedBox(
                  height: 11,
                ),
                Text(
                  'Graphic Design Master',
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.roboto(
                      // import before use googlefont
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 29,
                ),
                middlepart_course_details(),
                SizedBox(
                  height: 35,
                ),
                ListView.builder(

                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) =>
                      verticle_list_course_details(),)

              ],
            ),
          )
        ],
      )),
    );
  }
}

class verticle_list_course_details extends StatelessWidget {
  const verticle_list_course_details({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        height: 82,
        width: 374,
        decoration:
            BoxDecoration(
                color: Color(0xFF3E3A6D),
                borderRadius: BorderRadius.circular(19)),
        child: Row(
          children: [
            Container(
              height: 82,
              width: 99,
              decoration: BoxDecoration(
                color: Color(0xFFDB61A1),
                  borderRadius: BorderRadius.circular(19),
                image: DecorationImage(image: AssetImage('assets/images/Saly-20.png'))
              ),
              //child: Image.asset('assets/images/Saly-20.png',height: 130,width: 130,fit: BoxFit.fill,),
            ),
            SizedBox(width: 5,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text('Introduction Design Graphic',overflow: TextOverflow.ellipsis,style: GoogleFonts.roboto(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFFFFFF)
                ),),
                SizedBox(height: 1,),
                Row(
                  children: [
                    Text('12 Minutes',style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF8C8C8C)
                    ),),
                    SizedBox(width: 12,),
                    Container(
                      width: 39,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Color(0xFFEB53A2),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                        child: Text('Free',style: GoogleFonts.roboto(
                            fontSize: 11,
                            fontWeight: FontWeight.normal,
                            color: Color(0xFFFFFFFF)
                        ),),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}




