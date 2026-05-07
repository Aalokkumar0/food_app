import 'package:flutter/material.dart';
import 'package:food_app/category_screen.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class Food_App extends StatelessWidget {
  const Food_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "food App",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(322, 233, 45, 45),
        ),
        textTheme: GoogleFonts.aliceTextTheme(),
        scaffoldBackgroundColor: Colors.black,
      ),

      debugShowCheckedModeBanner: false,
      home: CategoryScreen(),
    );
  }
}
