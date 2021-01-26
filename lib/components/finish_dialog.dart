import 'package:flutter/material.dart';
import 'package:persian_fonts/persian_fonts.dart';
import 'package:tarvajeh/components/custom_dialog_text_field.dart';
import 'package:tarvajeh/utils/language_brain.dart';

import 'custom_button.dart';

class FinishDialog extends StatelessWidget {
  final bool isPersian;
  final TextEditingController emailController, sugCriController;
  final Function onPressed;

  FinishDialog(
      {this.isPersian,
      this.emailController,
      this.sugCriController,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.cloud_done,
              color: Colors.green,
              size: 50,
            ),
            Text(
              kFinishDialogTitle(isPersian),
              style: isPersian
                  ? PersianFonts.Shabnam.copyWith(
                      fontSize: 20,
                      color: Colors.black,
                    )
                  : TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      height: 2.0,
                    ),
            ),
          ],
        ),
      ),
      content: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              kFinishDialogContent(isPersian),
              textDirection: isPersian ? TextDirection.rtl : TextDirection.ltr,
              style: isPersian
                  ? PersianFonts.Shabnam.copyWith(
                      fontSize: 15,
                      color: Colors.black,
                    )
                  : TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      height: 2.0,
                    ),
            ),
            SizedBox(
              height: 20,
            ),
            CustomDialogTextField(
              iconData: Icons.email,
              isPersian: isPersian,
              text: kDialogHintEmail(isPersian),
              controller: emailController,
              height: 50,
              maxLines: 2,
              direction: isPersian?TextDirection.rtl:TextDirection.ltr
            ),
            SizedBox(
              height: 10,
            ),
            CustomDialogTextField(
              iconData: Icons.message_outlined,
              isPersian: isPersian,
              text: kDialogHintSugCri(isPersian),
              controller: sugCriController,
              height: 100,
              maxLines: 6,
              direction: isPersian ? TextDirection.rtl : TextDirection.ltr,
            ),
            SizedBox(
              height: 10,
            ),
            CustomButton(
              color: Colors.green[400],
              onPressed: onPressed,
              text: kFinishDialogButton(isPersian),
              isPersian: isPersian,
            ),
          ],
        ),
      ),
    );
  }
}
