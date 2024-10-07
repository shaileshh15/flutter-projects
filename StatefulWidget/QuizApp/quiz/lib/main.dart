// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});
  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State {
  List<Map> TotalQuestions = [
    {
      "Question": "who is  the founder of the Microsoft?",
      "Options": ["Steve jobs", "Bill Gates", "Lary Page", "Elon Musk"],
      "correctAnswer": 1,
    },
    {
      "Question": "who is  the founder of the Google?",
      "Options": ["Steve jobs", "Bill Gates", "Lary Page", "Elon Musk"],
      "correctAnswer": 2,
    },
    {
      "Question": "who is  the founder of the SpaceX?",
      "Options": ["Steve jobs", "Bill Gates", "Lary Page", "Elon Musk"],
      "correctAnswer": 3,
    },
    {
      "Question": "who is  the founder of the Apple?",
      "Options": ["Steve jobs", "Bill Gates", "Lary Page", "Elon Musk"],
      "correctAnswer": 0,
    },
    {
      "Question": "who is  the founder of the Meta?",
      "Options": ["Steve jobs", "Mark zukerberg", "Lary Page", "Elon Musk"],
      "correctAnswer": 1,
    },
  ];
  int currentQuestionIndex = 0;
  int selectedAnswerIndex = -1;
  int count = 0;
  WidgetStateProperty<Color?> checkAnswer(int answerIndex) {
    if (selectedAnswerIndex != -1) {
      if (answerIndex ==
          TotalQuestions[currentQuestionIndex]["correctAnswer"]) {
        count++;
        return const WidgetStatePropertyAll(Colors.green);
      } else if (selectedAnswerIndex == answerIndex) {
        count--;
        return const WidgetStatePropertyAll(Colors.red);
      } else {
        return const WidgetStatePropertyAll(null);
      }
    } else {
      return const WidgetStatePropertyAll(null);
    }
  }

  bool questionpage = true;
  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }

  Scaffold isQuestionScreen() {
    if (questionpage == true) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz App",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              color: Colors.pink,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 130,
                ),
                Text(
                  "Questions :${currentQuestionIndex + 1}/${TotalQuestions.length}",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            //question
            SizedBox(
              height: 100,
              width: 380,
              child: Text(
                "A.${TotalQuestions[currentQuestionIndex]['Question']}",
                style: const TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                  color: Colors.purple,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            //options 1
            SizedBox(
              height: 50,
              width: 380,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(0),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 0;
                    setState(() {});
                  }
                },
                child: Text(
                  "A.${TotalQuestions[currentQuestionIndex]['Options'][0]}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            //options 2
            SizedBox(
              height: 50,
              width: 380,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(1),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 1;
                    setState(() {});
                  }
                },
                child: Text(
                  "B.${TotalQuestions[currentQuestionIndex]['Options'][1]}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            //options 3
            SizedBox(
              height: 50,
              width: 380,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(2),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 2;
                    setState(() {});
                  }
                },
                child: Text(
                  "C.${TotalQuestions[currentQuestionIndex]['Options'][2]}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox( 
              height: 50,
            ),
            //options 4
            SizedBox(
              height: 50,
              width: 380,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(3),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    selectedAnswerIndex = 3;
                    setState(() {});
                  }
                },
                child: Text(
                  "D.${TotalQuestions[currentQuestionIndex]['Options'][3]}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              if (selectedAnswerIndex != -1) {
                if (currentQuestionIndex < TotalQuestions.length - 1) {
                  currentQuestionIndex++;
                } else {
                  questionpage = false;
                }
                selectedAnswerIndex = -1;
                setState(() {});
              }
            },
            backgroundColor: const Color.fromARGB(255, 114, 113, 109),
            child: const Icon(Icons.forward, color: Colors.cyan)),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz Result",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700,
              color: Colors.pink,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "https://images-cdn.ubuy.co.in/64d2615cdc228748e4296a77-juvale-large-gold-1st-place-trophy-cup.jpg",
                height: 220,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Congratulations",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.orange,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Score :$count/${TotalQuestions.length}",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 50),
              SizedBox(
                height: 60,
                width: 110,
                child: ElevatedButton(
                  onPressed: () {
                    if (questionpage == false) {
                      questionpage = true;
                      setState(() {});
                      currentQuestionIndex = 0;
                      count = 0;
                    }
                  },
                  style: ButtonStyle(),
                  child: const Text(
                    "Reset",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.pink,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
