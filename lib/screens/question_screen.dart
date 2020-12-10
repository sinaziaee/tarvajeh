import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:tarvajeh/components/custom_border_button.dart';
import 'package:tarvajeh/components/custom_button.dart';
import 'package:tarvajeh/components/custom_text_field.dart';
import 'package:tarvajeh/components/finish_dialog.dart';
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
  TextEditingController controller1, controller2, controller3, emailController, sugCriController;
  int count = 0;
  String word = 'word';

  @override
  Widget build(BuildContext context) {
    args = ModalRoute.of(context).settings.arguments;
    isPersian = args['isPersian'];
    return Scaffold(
      appBar: AppBar(
        title: Text('Questions'),
      ),
      body: ModalProgressHUD(
        inAsyncCall: isLoading,
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
                            color: Colors.green,
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
                  style: TextStyle(fontSize: 25),
                ),
                SizedBox(
                  height: 30,
                ),
                CustomTextField(
                  controller: controller1,
                  num: isPersian ? '۱' : '1',
                ),
                SizedBox(
                  height: 5,
                ),
                CustomTextField(
                  controller: controller2,
                  num: isPersian ? '۲' : '2',
                ),
                SizedBox(
                  height: 5,
                ),
                CustomTextField(
                  controller: controller3,
                  num: isPersian ? '۳' : '3',
                ),
                SizedBox(
                  height: 30,
                ),
                CustomButton(
                  color: Colors.green,
                  onPressed: () {
                    showDialog(
                      context: context,
                      child: FinishDialog(
                        isPersian: isPersian,
                        onPressed: (){},
                        emailController: emailController,
                        sugCriController: sugCriController,
                      ),
                    );
                  },
                  text: kButtonSubmitText(isPersian),
                ),
                CustomBorderButton(
                  text: kButtonNoAnswerText(isPersian),
                  onPressed: () {},
                  color: Colors.black,
                ),
                CustomBorderButton(
                  text: kButtonFinishText(isPersian),
                  onPressed: () {},
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
