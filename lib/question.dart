import 'package:adva_flutter/custom_button.dart';
import 'package:adva_flutter/data/questions.dart';
import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuetionIndex = 0;

  void answerQuestion() {
    setState(() {
      //currentQuetionIndex = currentQuetionIndex + 1;
      //currentQuetionIndex += 1;
      currentQuetionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuetionIndex];
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(182, 129, 40, 151),
            Color.fromARGB(159, 91, 12, 108),
          ],
        ),
      ),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            ...currentQuestion.getShuffledAnswers().map(
              (answer) {
                return CustomButton(
                  text: answer,
                  onPressed: answerQuestion,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
