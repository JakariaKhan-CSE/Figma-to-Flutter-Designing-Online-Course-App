import 'package:figma_to_flutter_online_course_app/screen/homescreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(myApp());
}
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,

          // Define the default brightness and colors.
          colorScheme: ColorScheme.fromSeed(
            // this theme is primary color
            seedColor: Color(0x29274F), // 29274F copy from figma
            // ···
            brightness: Brightness.light, // use dark not see primary color screen black
          ),

      ),
      home: HomeScreen(),
    );
  }
}
