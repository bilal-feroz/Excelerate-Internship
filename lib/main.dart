import 'package:flutter/material.dart';

void main() {
  runApp(const ExcelerateLearningApp());
}

class ExcelerateLearningApp extends StatelessWidget {
  const ExcelerateLearningApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Excelerate Learning Platform',
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Excelerate Learning Platform'),
      ),
      body: const Center(
        child: Text('Week 1 Project Setup'),
      ),
    );
  }
}
