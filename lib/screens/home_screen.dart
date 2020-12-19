import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tarvajeh/components/costum_text.dart';
import 'package:tarvajeh/components/custom_list_tile.dart';
import 'package:tarvajeh/components/drawer.dart';
import 'package:tarvajeh/screens/contact_us_screen.dart';
import 'package:tarvajeh/screens/form_screen.dart';
import 'package:tarvajeh/screens/goal_screen.dart';
import 'package:tarvajeh/screens/question_screen.dart';
import 'package:tarvajeh/screens/result_screen.dart';
import 'package:tarvajeh/screens/settings_screen.dart';
import 'package:tarvajeh/utils/language_brain.dart';

import 'about_us_screen.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isPersian = false;

  @override
  Widget build(BuildContext context) {
    print(isPersian);
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap: (){
              isPersian = !isPersian;
              setState(() {});
            },
            child: Container(
              margin: EdgeInsets.only(right: 30),
              child: Image(
                width: 40,
                image: AssetImage(
                    'assets/images/${isPersian ? 'flag_iran.png' : 'flag_britain.png'}'),
              ),
            ),
          ),
        ],
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Home screen'),
      ),
      drawer: CustomDrawer(
        isPersian: isPersian,
        navigateToContactScreen: () {
          navigateToScreen(ContactScreen.id);
        },
        navigateToFormScreen: () {
          navigateToScreen(FormScreen.id);
        },
        navigateToGoalScreen: () {
          navigateToScreen(GoalScreen.id);
        },
        navigateToResultsScreen: () {
          navigateToScreen(ResultsScreen.id);
        },
        navigateToSettingsScreen: () {
          navigateToScreen(SettingsScreen.id);
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            CustomText(
              direction: isPersian ? TextDirection.rtl : TextDirection.ltr,
              text: kLine1(isPersian),
              isPersian: isPersian,
            ),
            CustomText(
              direction: isPersian ? TextDirection.rtl : TextDirection.ltr,
              text: kLine2(isPersian),
              isPersian: isPersian,
            ),
            CustomText(
              direction: isPersian ? TextDirection.rtl : TextDirection.ltr,
              text: kLine3(isPersian),
              isPersian: isPersian,
            ),
            CustomText(
              direction: isPersian ? TextDirection.rtl : TextDirection.ltr,
              text: kLine4(isPersian),
              isPersian: isPersian,
            ),
            CustomText(
              direction: isPersian ? TextDirection.rtl : TextDirection.ltr,
              text: kLine5(isPersian),
              isPersian: isPersian,
            ),
            CustomText(
              direction: isPersian ? TextDirection.rtl : TextDirection.ltr,
              text: kLine6(isPersian),
              isPersian: isPersian,
            ),
            CustomText(
              direction: isPersian ? TextDirection.rtl : TextDirection.ltr,
              text: kLine7(isPersian),
              isPersian: isPersian,
            ),
          ],
        ),
      ),
    );
  }

  navigateToScreen(String route) {
    Navigator.pushNamed(
      context,
      route,
      arguments: {
        'isPersian': isPersian,
      },
    );
  }
}
