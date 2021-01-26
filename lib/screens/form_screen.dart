import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persian_fonts/persian_fonts.dart';
import 'package:tarvajeh/components/custom_button.dart';
import 'package:tarvajeh/components/gender_button.dart';
import 'package:tarvajeh/components/language_button.dart';
import 'package:tarvajeh/utils/constants.dart';
import 'package:tarvajeh/utils/language_brain.dart';

import 'question_screen.dart';

class FormScreen extends StatefulWidget {
  static String id = 'form_screen';

  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  bool isPersian;
  Map args;
  TextEditingController ageController = TextEditingController();
  Color activeColor = Colors.red[300];
  Color deActiveColor = Colors.white;
  Color activeLanguageColor = Colors.orange;
  bool isManSelected = false, isWomanSelected = false, isPersianNative = false, isEnglishNative = false, isPersianForm = false, isEnglishForm = false;

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
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            kFormTitle(isPersian),
            style: isPersian
                ? PersianFonts.Shabnam.copyWith(
              fontSize: 25,
              color: Colors.white,
            )
                : TextStyle(fontSize: 25, color: Colors.white),
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
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment:
                  isPersian ? CrossAxisAlignment.end : CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  kFormAge(isPersian),
                  textDirection:
                      isPersian ? TextDirection.rtl : TextDirection.ltr,
                  style: isPersian
                      ? PersianFonts.Shabnam.copyWith(fontSize: 20, color: Colors.white)
                      : TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 40,
                  width: 100,
                  child: TextField(
                    cursorColor: Colors.deepOrange,
                    controller: ageController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(
                        bottom: 20, // HERE THE IMPORTANT PART
                      ),
                      focusColor: Colors.white,
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.deepOrange,
                            width: 2,
                            style: BorderStyle.solid),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.deepOrange,
                            width: 2,
                            style: BorderStyle.solid),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.deepOrange,
                            width: 2,
                            style: BorderStyle.solid),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.deepOrange,
                            width: 2,
                            style: BorderStyle.solid),
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  kFormGender(isPersian),
                  textDirection:
                  isPersian ? TextDirection.rtl : TextDirection.ltr,
                  style: isPersian
                      ? PersianFonts.Shabnam.copyWith(fontSize: 20, color: Colors.white)
                      : TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GenderButton(
                      isPersian: isPersian,
                      imgPath: 'assets/images/man.png',
                      color: isManSelected?activeColor:deActiveColor,
                      onPressed: () {
                        onGenderSelected('man');
                      },
                    ),
                    GenderButton(
                      isPersian: isPersian,
                      imgPath: 'assets/images/woman.png',
                      color: isWomanSelected?activeColor:deActiveColor,
                      onPressed: () {
                        onGenderSelected('woman');
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  kFormNativeLanguage(isPersian),
                  textDirection:
                  isPersian ? TextDirection.rtl : TextDirection.ltr,
                  style: isPersian
                      ? PersianFonts.Shabnam.copyWith(fontSize: 20, color: Colors.white)
                      : TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LanguageButton(
                      isPersian: isPersian,
                      text: isPersian?'فارسی':'Persian',
                      color: isPersianNative?activeLanguageColor:deActiveColor,
                      onPressed: () {
                        onNativeLanguageSelected('persian');
                      },
                    ),
                    LanguageButton(
                      isPersian: isPersian,
                      text: isPersian?'انگلیسی':'English',
                      color: isEnglishNative?activeLanguageColor:deActiveColor,
                      onPressed: () {
                        onNativeLanguageSelected('english');
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  kFormTestLanguage(isPersian),
                  textDirection:
                  isPersian ? TextDirection.rtl : TextDirection.ltr,
                  style: isPersian
                      ? PersianFonts.Shabnam.copyWith(fontSize: 20, color: Colors.white)
                      : TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LanguageButton(
                      isPersian: isPersian,
                      text: isPersian?'فارسی':'Persian',
                      color: isPersianForm?activeLanguageColor:deActiveColor,
                      onPressed: () {
                        onTestLanguageSelected('persian');
                      },
                    ),
                    LanguageButton(
                      isPersian: isPersian,
                      text: isPersian?'انگلیسی':'English',
                      color: isEnglishForm?activeLanguageColor:deActiveColor,
                      onPressed: () {
                        onTestLanguageSelected('english');
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                CustomButton(
                  isPersian: isPersian,
                  color: Colors.orange,
                  onPressed: (){
                    _submit();
                  },
                  text: kButtonSubmit(isPersian),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  onGenderSelected(String gender){
    if(gender == 'man'){
      isManSelected = true;
      isWomanSelected = false;
    }
    else {
      isManSelected = false;
      isWomanSelected = true;
    }
    setState(() {});
  }

  onNativeLanguageSelected(String language){
    if(language == 'persian'){
      isPersianNative = true;
      isEnglishNative = false;
    }
    else {
      isPersianNative = false;
      isEnglishNative = true;
    }
    setState(() {});
  }

  onTestLanguageSelected(String language){
    if(language == 'persian'){
      isPersianForm = true;
      isEnglishForm = false;
    }
    else {
      isPersianForm = false;
      isEnglishForm = true;
    }
    setState(() {});
  }

  _submit(){
    // do submitting
    _navigateToQuestionScreen();
  }

  _navigateToQuestionScreen() {
    Navigator.popAndPushNamed(
      context,
      QuestionScreen.id,
      arguments: {
        'isPersian': isPersian,
      },
    );
  }
}
