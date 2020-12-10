import 'package:flutter/material.dart';

class GenderButton extends StatelessWidget {

  final String imgPath;
  final Color color;
  final Function onPressed;

  GenderButton({this.imgPath, this.onPressed, this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        color: color,
        shape: RoundedRectangleBorder(
          side: BorderSide(
              color: Colors.red,
              width: 1,
              style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(2),
        ),
        onPressed: onPressed,
        child: Image(
          image: AssetImage(imgPath),
        ),
      ),
    );
  }
}
