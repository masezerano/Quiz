import 'package:adva_flutter/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(138, 148, 24, 176),
          title: const Text(
            'Quiz',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        body: const StartScreen(),
      ),
    ),
  );
}
