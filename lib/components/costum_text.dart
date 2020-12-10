import 'package:flutter/material.dart';
import 'package:tarvajeh/utils/constants.dart';

class CustomText extends StatelessWidget {

  final String text;
  final TextDirection direction;
  final MainAxisAlignment rowDirection;

  CustomText({this.direction, this.text, this.rowDirection});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: rowDirection,
        children: [
          Icon(Icons.done, color: kMediumGreen,),
          Text(text),
        ],
      ),
    );
  }
}
