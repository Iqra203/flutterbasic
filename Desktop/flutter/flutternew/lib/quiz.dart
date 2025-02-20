import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  String? q1, q2, q3, q4, q5, q6, q7, q8, q9, q10;
  int count1 = 0,
      count2 = 0,
      count3 = 0,
      count4 = 0,
      count5 = 0,
      count6 = 0,
      count7 = 0,
      count8 = 0,
      count9 = 0,
      count10 = 0;
  int totalSum = 0;

  @override
  Widget build(BuildContext context) {
    totalSum = count1 +
        count2 +
        count3 +
        count4 +
        count5 +
        count6 +
        count7 +
        count8 +
        count9 +
        count10;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Quiz App',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.black,
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFff9966), // Light orange
                Color(0xFFff5e62), // Soft red
                Color(0xFFff7e5f), // Peachy pink
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Center(
                    child: Text(
                      'Choose the correct answer!',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 10),

                  // Question 1
                  quizCard('How many bones are there in the adult human body?',
                      ["186", "206", "226"], "206", (value) {
                    setState(() {
                      q1 = value;
                      count1 = value == "206" ? 1 : 0;
                    });
                  }, q1),

                  // Question 2
                  quizCard(
                      'What feature did Instagram introduce in 2016 to compete with Snapchat?',
                      ["Stories", "Reels", "Live Streaming"],
                      "Stories", (value) {
                    setState(() {
                      q2 = value;
                      count2 = value == "Stories" ? 1 : 0;
                    });
                  }, q2),

                  // Question 3
                  quizCard('What is the capital city of France?',
                      ["Paris", "New York", "Africa"], "Paris", (value) {
                    setState(() {
                      q3 = value;
                      count3 = value == "Paris" ? 1 : 0;
                    });
                  }, q3),

                  // Additional Questions 4 to 10
                  quizCard(
                      'Who wrote "Hamlet"?',
                      ["Shakespeare", "Hemingway", "Dickens"],
                      "Shakespeare", (value) {
                    setState(() {
                      q4 = value;
                      count4 = value == "Shakespeare" ? 1 : 0;
                    });
                  }, q4),

                  quizCard('Which planet is known as the Red Planet?',
                      ["Earth", "Mars", "Venus"], "Mars", (value) {
                    setState(() {
                      q5 = value;
                      count5 = value == "Mars" ? 1 : 0;
                    });
                  }, q5),

                  quizCard('Which ocean is the largest?',
                      ["Atlantic", "Pacific", "Indian"], "Pacific", (value) {
                    setState(() {
                      q6 = value;
                      count6 = value == "Pacific" ? 1 : 0;
                    });
                  }, q6),

                  quizCard('What is the boiling point of water?',
                      ["100°C", "90°C", "50°C"], "100°C", (value) {
                    setState(() {
                      q7 = value;
                      count7 = value == "100°C" ? 1 : 0;
                    });
                  }, q7),

                  quizCard('Which country is famous for the Eiffel Tower?',
                      ["Germany", "France", "Italy"], "France", (value) {
                    setState(() {
                      q8 = value;
                      count8 = value == "France" ? 1 : 0;
                    });
                  }, q8),

                  quizCard('Who painted the Mona Lisa?',
                      ["Van Gogh", "Da Vinci", "Picasso"], "Da Vinci", (value) {
                    setState(() {
                      q9 = value;
                      count9 = value == "Da Vinci" ? 1 : 0;
                    });
                  }, q9),

                  quizCard(
                      'Which country is known as the Land of the Rising Sun?',
                      ["China", "Japan", "India"],
                      "Japan", (value) {
                    setState(() {
                      q10 = value;
                      count10 = value == "Japan" ? 1 : 0;
                    });
                  }, q10),

                  // Total Sum Display
                  SizedBox(height: 20),
                  Center(
                    child: Text(
                      'You have answered $totalSum out of 10 Questions.',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Reusable Widget for Quiz Questions
  Widget quizCard(String question, List<String> options, String correctAnswer,
      ValueChanged<String?> onChanged, String? groupValue) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              question,
              style: TextStyle(fontSize: 16),
            ),
            ...options
                .map((option) => RadioListTile(
                      title: Text(option),
                      value: option,
                      groupValue: groupValue,
                      onChanged: onChanged,
                    ))
                .toList(),
          ],
        ),
      ),
    );
  }
}
