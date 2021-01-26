import 'package:flutter/material.dart';

class GenderButton extends StatelessWidget {

  final String imgPath;
  final Color color;
  final Function onPressed;
  final bool isPersian;

  GenderButton({this.imgPath, this.onPressed, this.color, this.isPersian});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        color: color,
        shape: RoundedRectangleBorder(
          side: BorderSide(
              color: Colors.red,
              width: 2,
              style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(5),
        ),
        onPressed: onPressed,
        child: Image(
          image: AssetImage(imgPath),
        ),
      ),
    );
  }
}
