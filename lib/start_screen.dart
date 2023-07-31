import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(182, 129, 40, 151),
            Color.fromARGB(159, 91, 12, 108)
          ],
        ),
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 260,
              color: const Color.fromARGB(111, 25, 5, 62),
            ),
            const Padding(
              padding: EdgeInsets.all(20),
            ),
            const Text(
              'Learn Flutter the Fun way',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            const Padding(
              padding: EdgeInsets.all(13),
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
              ),
              child: const SizedBox(
                width: 100,
                child: Row(
                  children: [
                    Text(
                      "Start Quiz",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_right_alt,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
