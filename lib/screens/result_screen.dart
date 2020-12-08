import 'package:flutter/material.dart';
import 'package:tarvajeh/utils/language_brain.dart';

class ResultsScreen extends StatefulWidget {
  static String id = 'results_screen';
  @override
  _ResultsScreenState createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(kResultTitle(false)),
      ),
    );
  }
}