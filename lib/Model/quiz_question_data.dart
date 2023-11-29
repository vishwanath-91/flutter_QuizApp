import 'package:quizapp/Model/quiz_question_model.dart';

const questionList = [
  QuizQuestionModel(
    question: 'What are the main building blocks of Flutter UI?',
    answers: [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestionModel(
    question: 'How is Flutter UI built?',
    answers: [
      'By combining widgets in code',
      'By combining widgets in a visual editor',
      'By defining widgets in config files',
      'By using xcode for iOS and Android Studio for Android',
    ],
  ),
  QuizQuestionModel(
    question: 'What is the purpose of a StatefulWidget?',
    answers: [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),
  QuizQuestionModel(
    question:
        'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    answers: [
      'StatefulWidget',
      'StatelessWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizQuestionModel(
    question: 'What happens if you change data in a StatelessWidget?',
    answers: [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  QuizQuestionModel(
    question: 'How should you update data inside of StatefulWidgets?',
    answers: [
      'By calling setState()',
      'By calling updateUI()',
      'By calling updateData()',
      'By calling updateState()',
    ],
  ),
];
