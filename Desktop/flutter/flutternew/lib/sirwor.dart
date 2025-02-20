import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.grey[300],
          appBar: AppBar(
            title: Text(
              'MyFirstApp',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            backgroundColor: const Color.fromARGB(255, 214, 128, 157),
          ),
          body: Column(
            children: [
              Text(
                "Hey i am iqra",
                style: GoogleFonts.poppins(),
              ),
            ],
          )),
    );
  }
}
