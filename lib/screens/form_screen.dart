import 'package:flutter/material.dart';
import 'package:tarvajeh/utils/language_brain.dart';

import 'question_screen.dart';

class FormScreen extends StatefulWidget {
  static String id = 'form_screen';
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  bool isPersian;
  Map args;

  @override
  Widget build(BuildContext context) {
    args = ModalRoute.of(context).settings.arguments;
    isPersian = args['isPersian'];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          kFormTitle(isPersian),
        ),
      ),
    );
  }

  _navigateToQuestionScreen() {
    Navigator.popAndPushNamed(
      context,
      QuestionScreen.id,
      arguments: {
        'isPersian': isPersian,
      },
    );
  }

}
