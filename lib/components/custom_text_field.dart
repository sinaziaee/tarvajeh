import 'package:flutter/material.dart';
import 'package:persian_fonts/persian_fonts.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String num;
  final bool isPersian;
  final node;
  final isLast;

  CustomTextField(
      {this.controller, this.num, this.isPersian, this.node, this.isLast});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(bottom: 19),
            height: 50,
            width: 43,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.white),
            ),
            child: Center(
              child: Text(
                num,
                style: isPersian
                    ? PersianFonts.Shabnam.copyWith(
                        fontSize: 20,
                        color: Colors.white,
                      )
                    : TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        height: 2.0,
                      ),
              ),
            ),
          ),
          SizedBox(width: 10),
          if (isLast ?? false) ...[
            Expanded(
              child: TextFormField(
                textAlignVertical: TextAlignVertical.center,
                textAlign: TextAlign.center,
                cursorColor: Colors.white,
                controller: controller,
                maxLength: 60,
                style: isPersian
                    ? PersianFonts.Shabnam.copyWith(
                        fontSize: 20,
                        color: Colors.white,
                      )
                    : TextStyle(fontSize: 20, color: Colors.white),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.white,
                        width: 1,
                        style: BorderStyle.solid),
                  ),
                  contentPadding: EdgeInsets.only(
                    bottom: 25, // HERE THE IMPORTANT PART
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.white,
                        width: 1,
                        style: BorderStyle.solid),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.white,
                        width: 1,
                        style: BorderStyle.solid),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.lightGreenAccent,
                        width: 1,
                        style: BorderStyle.solid),
                  ),
                ),
                onFieldSubmitted: (_) =>
                    node.unfocus(), // Submit and hide keyboard
              ),
            ),
          ] else ...[
            Expanded(
              child: TextFormField(
                textAlignVertical: TextAlignVertical.center,
                textAlign: TextAlign.center,
                cursorColor: Colors.white,
                controller: controller,
                maxLength: 60,
                style: isPersian
                    ? PersianFonts.Shabnam.copyWith(
                        fontSize: 20,
                        color: Colors.white,
                      )
                    : TextStyle(fontSize: 20, color: Colors.white),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(
                    bottom: 25, // HERE THE IMPORTANT PART
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.white,
                        width: 1,
                        style: BorderStyle.solid),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.white,
                        width: 1,
                        style: BorderStyle.solid),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.white,
                        width: 1,
                        style: BorderStyle.solid),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: Colors.lightGreenAccent,
                        width: 1,
                        style: BorderStyle.solid),
                  ),
                ),
                onEditingComplete: () => node.nextFocus(), // Move focus to next
              ),
            ),
          ],
        ],
      ),
    );
  }
}
