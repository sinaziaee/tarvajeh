import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String num;

  CustomTextField({this.controller, this.num});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 19),
            height: 50,
            width: 43,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.grey),
            ),
            child: Center(
              child: Text(num, style: TextStyle(fontSize: 20),),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: TextField(
              controller: controller,
              maxLength: 50,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
