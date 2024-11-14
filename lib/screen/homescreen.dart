import 'package:figma_to_flutter_online_course_app/widget/widget.dart'; // manually import this so that, save big line import code
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // very useful
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        physics: BouncingScrollPhysics(),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Online',style: GoogleFonts.roboto(  // import before use googlefont
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),),
              Text('Master Class',style: GoogleFonts.roboto(  // import before use googlefont
                  fontSize: 36,
                  fontWeight: FontWeight.w500, // in figma show medium
                  color: Colors.white  // fill color white
              ),)
            ],
          ),
          const SizedBox(height: 22,),
          SizedBox(
            height: 349,  // get from figma design (when click container in figma right side bar show height and width)
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) =>
                  MyHorizontalList(
                      courseHeadline: 'Recommended',
                      courseTitle: 'UI/UX DESIGNER\nBEGINNER',
                      courseImage: 'assets/images/img_saly10.png',
                      startColor: 0xFF9288E4,  // be careful 0xFF then color code otherwise color not work
                      endColor: 0xFF534EA7),),

          ),
          const SizedBox(height: 34,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Free online class',style: GoogleFonts.roboto(  // import before use googlefont
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Colors.white
              ),),
              Text('From over 80 Lectures',style: GoogleFonts.roboto(  // import before use googlefont
                  fontSize: 14,
                  fontWeight: FontWeight.normal, // in figma show medium
                   color: Color(0xFF9C9A9A)  // fill color be careful 0xFF before color code
                //color: Colors.grey
              ),)
            ],
          ),
          ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 5,
            shrinkWrap: true,
            itemBuilder: (context, index) {
           return MyVerticleList(
             courseImage: 'assets/images/img_saly20.png',
           courseDuration: '8 hours',
           courseTitle: 'Flutter Developer',
           rating: 3.0,);
          },)
        ],
      )),
    );
  }
}
