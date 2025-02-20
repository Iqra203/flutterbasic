import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutternew/home.dart';  // Make sure this file exists
import 'package:firstapp/Signup.dart';  // Make sure this file exists
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());  // Start with MyApp, which can later show Home or Signup
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Signup(),  // You can switch this to Home later based on logic
      debugShowCheckedModeBanner: false,
    );
  }
}
