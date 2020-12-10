import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tarvajeh/utils/language_brain.dart';

class GoalScreen extends StatefulWidget {
  static String id = 'goal_screen';

  @override
  _GoalScreenState createState() => _GoalScreenState();
}

class _GoalScreenState extends State<GoalScreen> {
  bool isPersian;
  Map args;

  @override
  Widget build(BuildContext context) {
    args = ModalRoute.of(context).settings.arguments;
    isPersian = args['isPersian'];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          kGoalTitle(isPersian),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 30,),
              Text(
                kPurposeText(isPersian),
                textDirection:
                    isPersian ? TextDirection.rtl : TextDirection.ltr,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                kPurposeQuote(isPersian),
                textAlign: TextAlign.center,
                textDirection:
                    isPersian ? TextDirection.rtl : TextDirection.ltr,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
