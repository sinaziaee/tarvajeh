import 'package:flutter/material.dart';
import 'package:persian_fonts/persian_fonts.dart';

class CustomButton extends StatelessWidget {

  final Color color;
  final String text;
  final Function onPressed;
  final bool isPersian;

  CustomButton({this.color, this.text, this.onPressed, this.isPersian});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      height: 50,
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      onPressed: onPressed,
      child: Text(text,
        style: isPersian
            ? PersianFonts.Shabnam.copyWith(fontSize: 20, color: Colors.white)
            : TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
      color: color,
    );
  }
}
