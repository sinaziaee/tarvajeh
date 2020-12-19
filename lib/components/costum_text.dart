import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tarvajeh/utils/constants.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextDirection direction;
  final bool isPersian;

  CustomText({this.direction, this.text, this.isPersian});

  @override
  Widget build(BuildContext context) {
    if(isPersian){
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        margin: EdgeInsets.only(bottom: 10),
        child: Row(
          children: [
            Expanded(
              child: Text(
                text,
                textDirection: direction,
                maxLines: 3,
              ),
            ),
            Icon(
              Icons.done,
              color: kLightGreen,
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
          children: [
            Icon(
              Icons.done,
              color: kLightGreen,
              size: 30,
            ),
            Expanded(
              child: Text(
                text,
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
