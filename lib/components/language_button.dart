import 'package:flutter/material.dart';

class LanguageButton extends StatelessWidget {
  final String text;
  final Color color;
  final Function onPressed;

  LanguageButton({this.text, this.onPressed, this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        color: color,
        shape: RoundedRectangleBorder(
          side:
              BorderSide(color: Colors.orange, width: 1, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(2),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
