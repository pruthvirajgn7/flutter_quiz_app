import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 250,
            color: const Color.fromARGB(151, 255, 255, 255),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 60, bottom: 20),
            child: Text(
              'Learn Flutter the fun way!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),
          OutlinedButton.icon(
              onPressed: () {
                startQuiz();
              },
              icon: const Icon(Icons.arrow_right_alt),
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(
                    fontSize: 20,
                  )),
              label: const Text(
                'Start Quiz',
              ))
        ],
      ),
    );
  }
}
