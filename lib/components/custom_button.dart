import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

  final Color color;
  final String text;
  final Function onPressed;

  CustomButton({this.color, this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      onPressed: onPressed,
      child: Text(text, style: TextStyle(color: Colors.white),),
      color: color,
    );
  }
}
