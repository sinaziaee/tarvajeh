import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:persian_fonts/persian_fonts.dart';
import 'package:tarvajeh/components/custom_border_button.dart';
import 'package:tarvajeh/components/custom_button.dart';
import 'package:tarvajeh/components/custom_text_field.dart';
import 'package:tarvajeh/components/finish_dialog.dart';
import 'package:tarvajeh/utils/constants.dart';
import 'package:tarvajeh/utils/language_brain.dart';

class QuestionScreen extends StatefulWidget {
  static String id = 'questions_screen';

  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  bool isLoading = false;
  bool isPersian = false;
  Map args;
  TextEditingController controller1,
      controller2,
      controller3,
      emailController,
      sugCriController;
  int count = 0;
  String word = 'word';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    args = ModalRoute.of(context).settings.arguments;
    isPersian = args['isPersian'];
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          kGrey,
          kMediumGreen,
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text('Questions'),
          automaticallyImplyLeading: !isPersian,
          actions: [
            if (isPersian) ...[
              IconButton(
                  icon: Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ]
          ],
        ),
        body: ModalProgressHUD(
          inAsyncCall: isLoading,
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 20,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 15,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          if (index <= count) {
                            return Container(
                              margin: EdgeInsets.symmetric(horizontal: 1),
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                color: Colors.lightGreenAccent,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            );
                          }
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 1),
                            height: 20,
                            width: 20,
                            color: Colors.grey,
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      word,
                      style: isPersian
                          ? PersianFonts.Shabnam.copyWith(
                              fontSize: 25,
                              color: Colors.white,
                            )
                          : TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    CustomTextField(
                      controller: controller1,
                      num: isPersian ? '۱' : '1',
                      isPersian: isPersian,
                      node: node,
                      isLast: false,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    CustomTextField(
                      controller: controller2,
                      num: isPersian ? '۲' : '2',
                      isPersian: isPersian,
                      node: node,
                      isLast: false,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    CustomTextField(
                      controller: controller3,
                      num: isPersian ? '۳' : '3',
                      isPersian: isPersian,
                      node: node,
                      isLast: true,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    CustomBorderButton(
                      isPersian: isPersian,
                      text: kButtonNextText(isPersian),
                      onPressed: () {
                      },
                      color: Colors.lightGreenAccent,
                      textColor: Colors.black,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomBorderButton(
                      isPersian: isPersian,
                      text: kButtonNoAnswerText(isPersian),
                      onPressed: () {},
                      color: Colors.white,
                      textColor: Colors.black,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomBorderButton(
                      isPersian: isPersian,
                      text: kButtonFinishText(isPersian),
                      onPressed: () {},
                      color: Colors.red,
                      textColor: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
