import 'package:flutter/material.dart';
import 'package:persian_fonts/persian_fonts.dart';

class LanguageButton extends StatelessWidget {
  final String text;
  final Color color;
  final Function onPressed;
  final bool isPersian;

  LanguageButton({this.text, this.onPressed, this.color, this.isPersian});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        color: color,
        shape: RoundedRectangleBorder(
          side:
              BorderSide(color: Colors.orange, width: 2, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(5),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: isPersian
              ? PersianFonts.Shabnam.copyWith(fontSize: 20, color: Colors.black)
              : TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
