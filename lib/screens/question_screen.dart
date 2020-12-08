import 'package:flutter/material.dart';
import 'package:tarvajeh/utils/language_brain.dart';

class QuestionScreen extends StatefulWidget {
  static String id = 'questions_screen';
  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Questions'),
      ),
    );
  }
}