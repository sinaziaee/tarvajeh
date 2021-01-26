import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persian_fonts/persian_fonts.dart';
import 'package:tarvajeh/utils/constants.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextDirection direction;
  final bool isPersian;
  final Color textColor;

  CustomText({this.direction, this.text, this.isPersian, this.textColor});

  @override
  Widget build(BuildContext context) {
    if(isPersian){
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        margin: EdgeInsets.only(bottom: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                text,
                style: PersianFonts.Shabnam.copyWith(
                   fontSize: 18, color: textColor??Colors.white),
                textDirection: direction,
                maxLines: 3,
              ),
            ),
            Icon(
              Icons.done,
              color: Colors.lightGreenAccent,
              size: 30,
            ),
          ],
        ),
      );
    }
    else {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        margin: EdgeInsets.only(bottom: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.done,
              color: Colors.lightGreenAccent,
              size: 30,
            ),
            Expanded(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 18, color: textColor??Colors.white
                ),
                textDirection: direction,
                maxLines: 3,
              ),
            ),
          ],
        ),
      );
    }
  }
}
