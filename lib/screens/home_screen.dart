import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tarvajeh/components/custom_list_tile.dart';
import 'package:tarvajeh/screens/contact_us_screen.dart';
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Home screen'),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                currentAccountPicture: Image(
                  image: AssetImage('assets/images/logo.png'),
                ),
                accountEmail: Text(
                  'tarvajeh.ir',
                  style: TextStyle(color: Colors.grey),
                ),
                accountName: Text(
                  kAppName(isPersian),
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(),
              CustomListTile(
                title: kTestMeTitle(isPersian),
                onTap: () {
                  _navigateToQuestionScreen();
                },
                iconData: FontAwesomeIcons.question,
              ),
              CustomListTile(
                title: kGoalTitle(isPersian),
                onTap: () {
                  _navigateToGoalScreen();
                },
                iconData: Icons.group_work,
              ),
              CustomListTile(
                title: kResultTitle(isPersian),
                onTap: () {
                  _navigateToResultsScreen();
                },
                iconData: Icons.book,
              ),
              CustomListTile(
                title: kContactUsTitle(isPersian),
                onTap: () {
                  _navigateToContactScreen();
                },
                iconData: Icons.contact_mail,
              ),
              CustomListTile(
                title: kSettingsTitle(isPersian),
                onTap: () {
                  _navigateToSettingsScreen();
                },
                iconData: Icons.settings,
              ),
              ListTile(
                leading: Icon(Icons.language),
                title: Text(
                  kLanguageTitle(isPersian),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    kLanguage(isPersian),
                  ),
                ),
                trailing: Switch(
                  value: isPersian,
                  onChanged: (value) {
                    isPersian = value;
                    setState(() {});
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _navigateToGoalScreen() {
    Navigator.pushNamed(
      context,
      GoalScreen.id,
      arguments: {
        'isPersian': isPersian,
      },
    );
  }

  _navigateToContactScreen() {
    Navigator.pushNamed(
      context,
      ContactScreen.id,
      arguments: {
        'isPersian': isPersian,
      },
    );
  }

  _navigateToAboutUsScreen() {
    Navigator.pushNamed(
      context,
      AboutScreen.id,
      arguments: {
        'isPersian': isPersian,
      },
    );
  }

  _navigateToResultsScreen() {
    Navigator.pushNamed(
      context,
      ResultsScreen.id,
      arguments: {
        'isPersian': isPersian,
      },
    );
  }

  _navigateToSettingsScreen() {
    Navigator.pushNamed(
      context,
      SettingsScreen.id,
      arguments: {
        'isPersian': isPersian,
      },
    );
  }

  _navigateToQuestionScreen() {
    Navigator.pushNamed(
      context,
      QuestionScreen.id,
      arguments: {
        'isPersian': isPersian,
      },
    );
  }
}
