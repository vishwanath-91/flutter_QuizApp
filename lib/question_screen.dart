import 'package:flutter/material.dart';

import 'Model/quiz_question_data.dart';
import 'answer_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({Key? key, required this.onSelectAnswer})
      : super(key: key);
  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void nextQuestionIndex(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestionAnswer = questionList[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            currentQuestionAnswer.question,
            style: const TextStyle(color: Colors.white, fontSize: 20),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          ...currentQuestionAnswer.getShuffledAnswer().map((answers) {
            return AnswerButton(
                onTap: () {
                  nextQuestionIndex(answers);
                },
                answerText: answers);
          }),
        ],
      ),
    );
  }
}
