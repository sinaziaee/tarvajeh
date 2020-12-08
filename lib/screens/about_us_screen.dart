import 'package:flutter/material.dart';
import 'package:tarvajeh/utils/language_brain.dart';

class AboutScreen extends StatefulWidget {
  static String id = 'about_screen';
  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(kAboutUsTitle(false)),
      ),
    );
  }
}