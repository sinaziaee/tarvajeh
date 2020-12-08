import 'package:flutter/material.dart';
import 'package:tarvajeh/utils/language_brain.dart';

class GoalScreen extends StatefulWidget {
  static String id = 'goal_screen';
  @override
  _GoalScreenState createState() => _GoalScreenState();
}

class _GoalScreenState extends State<GoalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(kGoalTitle(false)),
      ),
    );
  }
}