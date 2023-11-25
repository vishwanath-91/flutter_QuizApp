import 'package:quizapp/Model/quiz_question_model.dart';

final questionList = [
  QuizQuestionModel(
    question: 'what are the main building blocks of flutter UI',
    answer: [
      'Widgets',
      'Components',
      'Blocks',
      'Function',
    ],
  ),
  QuizQuestionModel(
    question: 'How are flutter UI built?',
    answer: [
      'By Combining widgets in code',
      'By Combining widgets in a visual editor',
      'By Defining widgets in config files',
      ''
    ],
  ),
  QuizQuestionModel(
    question: 'what is the purpose of a stateful-widget',
    answer: [
      'update UI as data changes',
      'update data as UI changes',
      'Ignore data changes',
      'render UI that does not depend on data',
    ],
  ),
  QuizQuestionModel(question: '', answer: answer)
];
