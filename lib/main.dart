import 'package:flutter/material.dart';
import 'package:part2_quiz_c11_sun/home.dart';
//import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: home.routeName,
      routes: {
        home.routeName: (context)=> home(),

      },

    );
  }
}