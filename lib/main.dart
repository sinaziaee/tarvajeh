import 'package:flutter/material.dart';
import 'package:tarvajeh/screens/about_us_screen.dart';
import 'package:tarvajeh/screens/contact_us_screen.dart';
import 'package:tarvajeh/screens/goal_screen.dart';
import 'package:tarvajeh/screens/home_screen.dart';
import 'package:tarvajeh/screens/intro_screen.dart';
import 'package:tarvajeh/screens/question_screen.dart';
import 'package:tarvajeh/screens/result_screen.dart';
import 'package:tarvajeh/screens/settings_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        AboutScreen.id: (context) => AboutScreen(),
        ResultsScreen.id: (context) => ResultsScreen(),
        SettingsScreen.id: (context) => SettingsScreen(),
        QuestionScreen.id: (context) => QuestionScreen(),
        GoalScreen.id: (context) => GoalScreen(),
        IntroScreen.id: (context) => IntroScreen(),
        ContactScreen.id: (context) => ContactScreen(),
      },
    );
  }
}
