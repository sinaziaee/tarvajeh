import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persian_fonts/persian_fonts.dart';
import 'package:tarvajeh/utils/constants.dart';
import 'package:tarvajeh/utils/language_brain.dart';

class GoalScreen extends StatefulWidget {
  static String id = 'goal_screen';

  @override
  _GoalScreenState createState() => _GoalScreenState();
}

class _GoalScreenState extends State<GoalScreen> {
  bool isPersian;
  Map args;

  @override
  Widget build(BuildContext context) {
    args = ModalRoute.of(context).settings.arguments;
    isPersian = args['isPersian'];

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [kGrey, kMediumGreen, ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: Text(
            kGoalTitle(isPersian),
            style: isPersian?PersianFonts.Shabnam.copyWith(
              fontSize: 20, color: Colors.white,
            ): TextStyle(fontSize: 20, color: Colors.white),
          ),
          automaticallyImplyLeading: !isPersian,
          actions: [
            if(isPersian)...[
              IconButton(icon: Icon(Icons.chevron_right, color: Colors.white,), onPressed: (){
                Navigator.pop(context);
              }),
            ]
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 30,),
                Text(
                  kPurposeText(isPersian),
                  style: isPersian?PersianFonts.Shabnam.copyWith(
                    fontSize: 16,
                    color: Colors.white
                  ): TextStyle(fontSize: 16, color: Colors.white),
                  textDirection:
                      isPersian ? TextDirection.rtl : TextDirection.ltr,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  kPurposeQuote(isPersian),
                  style: isPersian?PersianFonts.Shabnam.copyWith(
                    fontSize: 15,
                    color: Colors.white
                  ): TextStyle(fontSize: 15, color: Colors.white),
                  textAlign: TextAlign.center,
                  textDirection:
                      isPersian ? TextDirection.rtl : TextDirection.ltr,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
