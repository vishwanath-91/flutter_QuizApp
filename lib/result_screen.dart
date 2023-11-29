import 'package:flutter/material.dart';

import 'Model/quiz_question_data.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({Key? key, required this.onSelectedAnswer})
      : super(key: key);

  final List<String> onSelectedAnswer;

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  late List<Map<String, Object>> summaryData;
  int correctAnswer = 0;

  @override
  void initState() {
    super.initState();
    summaryData = calculateSummaryData();
  }

  List<Map<String, Object>> calculateSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < widget.onSelectedAnswer.length; i++) {
      summary.add({
        'question_index': i,
        'question': questionList[i].question,
        'correct_answer': questionList[i].answers[0],
        'user_answer': widget.onSelectedAnswer[i],
      });

      if (questionList[i].answers[0] == widget.onSelectedAnswer[i]) {
        correctAnswer++;
      }
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Results'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You answered $correctAnswer out of ${questionList.length} questions correctly!",
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: summaryData.length,
                itemBuilder: (context, index) {
                  final data = summaryData[index];
                  return Card(
                    child: ListTile(
                      title: Text(
                          'Question ${((data['question_index'] as int) + 1).toString()} ${data['question']}'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Correct Answer: ${data['correct_answer']}',
                            style: TextStyle(
                              color:
                                  data['correct_answer'] == data['user_answer']
                                      ? Colors.green
                                      : Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Your Answer: ${data['user_answer']}',
                            style: TextStyle(
                                color: data['correct_answer'] ==
                                        data['user_answer']
                                    ? Colors.green
                                    : Colors.red),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Restart Quiz",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
