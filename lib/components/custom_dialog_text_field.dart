import 'package:flutter/material.dart';
import 'package:persian_fonts/persian_fonts.dart';
import 'package:tarvajeh/utils/constants.dart';

class CustomDialogTextField extends StatelessWidget {
  final String text;
  final bool isPersian;
  final IconData iconData;
  final TextEditingController controller;
  final double height;
  final int maxLines;
  final TextDirection direction;

  CustomDialogTextField(
      {this.iconData,
      this.isPersian,
      this.text,
      this.controller,
      this.height,
      this.maxLines,
      this.direction});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: height,
      child: Row(
        children: [
          Container(
            height: height,
            padding: EdgeInsets.symmetric(horizontal: 7, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey),
            ),
            child: Icon(iconData),
          ),
          SizedBox(
            width: 5,
          ),
          Expanded(
            child: TextField(
              // textDirection: isPersian?TextDirection.rtl:TextDirection.ltr,
              textDirection: direction,
              maxLines: maxLines,
              controller: controller,
              decoration: InputDecoration(
                labelStyle: isPersian
                    ? PersianFonts.Shabnam.copyWith(
                        fontSize: 15,
                        color: Colors.grey[700],
                      )
                    : TextStyle(fontSize: 15, color: Colors.grey[700]),
                alignLabelWithHint: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                      color: kDarkGreen, width: 2, style: BorderStyle.solid),
                ),
                labelText: text,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
