import 'package:flutter/material.dart';
import 'package:persian_fonts/persian_fonts.dart';

class CustomBorderButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final Color color;
  final Color textColor;
  final bool isPersian;

  CustomBorderButton({this.text, this.onPressed, this.color, this.isPersian, this.textColor});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: color,
      height: 50,
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: isPersian?PersianFonts.Shabnam.copyWith(
          fontSize: 20, color: textColor,
        ): TextStyle(fontSize: 20, color: textColor),
      ),
    );
  }
}
