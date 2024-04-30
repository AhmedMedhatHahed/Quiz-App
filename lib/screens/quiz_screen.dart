import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:quizapp/screens/question_screen.dart';

import '../models/question_model.dart';
import '../resulte.dart';
import 'home_screen.dart';


class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  Widget? activeScreen;

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = Result(selectedAnswers, restart);
      });
    }

    log(selectedAnswers.toString());
  }

  void restart() {
    setState(() {
      selectedAnswers = [];
      activeScreen = Home(switchScreen);
    });
  }

  @override
  void initState() {
    super.initState();
    activeScreen = Home(switchScreen);
  }

  void switchScreen() {
    setState(() {
      activeScreen = Question(chooseAnswer);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff5FBDFF),
                Color(0xff96E9C6),
              ],
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
