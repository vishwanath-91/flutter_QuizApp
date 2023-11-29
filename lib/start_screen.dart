import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key, required this.startQuiz}) : super(key: key);

  final void Function() startQuiz;

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          color: const Color.fromARGB(50, 255, 255, 255),
        ),
        const SizedBox(height: 50),
        const Text(
          "Learn Flutter the fun way!",
          style: TextStyle(
            color: Color.fromARGB(255, 237, 223, 252),
            fontSize: 25,
          ),
        ),
        const SizedBox(height: 50),
        OutlinedButton.icon(
          onPressed: widget.startQuiz,
          icon: const Icon(Icons.play_arrow),
          label: const Text("Start Quiz"),
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            elevation: 6,
            side: const BorderSide(width: 2, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
