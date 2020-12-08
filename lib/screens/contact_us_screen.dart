import 'package:flutter/material.dart';
import 'package:tarvajeh/utils/language_brain.dart';

class ContactScreen extends StatefulWidget {
  static String id = 'contact_us_screen';
  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(kContactUsTitle(false)),
      ),
    );
  }
}