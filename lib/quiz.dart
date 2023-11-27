import 'package:flutter/material.dart';
import 'package:quizapp/question_screen.dart';
import 'package:quizapp/start_screen.dart';

import 'Model/quiz_question_data.dart';

void main() {
  runApp(const Quiz());
}

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  dynamic activeScreen;

  @override
  void initState() {
    super.initState();
    // Initialize activeScreen with QuestionScreen
    activeScreen = 'question-screen';
  }

  void switchScreen() {
    setState(() {
      activeScreen = 'start-screen';
    });
  }

  final List<String> selectedAnswers = [];

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questionList.length) {
      setState(() {
        activeScreen = 'start-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget;
    if (activeScreen == 'start-screen') {
      screenWidget = StartScreen(startQuiz: switchScreen);
    } else if (activeScreen == 'question-screen') {
      screenWidget = QuestionScreen(onSelectAnswer: chooseAnswer);
    } else {
      // Handle other cases if needed
      screenWidget = Container();
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
