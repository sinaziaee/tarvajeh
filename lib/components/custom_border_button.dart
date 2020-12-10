import 'package:flutter/material.dart';

class CustomBorderButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final Color color;

  CustomBorderButton({this.text, this.onPressed, this.color});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: color, width: 1, style: BorderStyle.solid),
        borderRadius: BorderRadius.circular(10),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(color: color),
      ),
    );
  }
}
