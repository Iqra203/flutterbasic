// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<dynamic> items = [
    {
      "image": "assets/images/p1.jpg", // Corrected local image path
      "name": "Rose",
      "price": "\$100"
    },
    {"image": "assets/images/p1.jpg", "name": "Sun flower", "price": "\$200"},
    {"image": "assets/images/p3.jpg", "name": "Lilly", "price": "\$150"},
    {"image": "assets/images/p4.jpg", "name": "Jasmine", "price": "\$120"},
    {"image": "assets/images/p5.jpg", "name": "Daisy", "price": "\$80"},
    {"image": "assets/images/p7.jpg", "name": "Aster", "price": "\$90"},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Grid View',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 6,
              crossAxisSpacing: 6,
            ),
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      items[index]["image"], // Corrected to Image.asset
                      height: 250,
                      width: 290,
                    ),
                    SizedBox(height: 14),
                    Text(
                      items[index]["name"],
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    SizedBox(height: 8),
                    Text(
                      items[index]["price"],
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
