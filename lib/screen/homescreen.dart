import 'package:figma_to_flutter_online_course_app/widget/my_horizontal_list.dart';
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
                      startColor: 0x9288E4,
                      endColor: 0x534EA7),),

          )
        ],
      )),
    );
  }
}
