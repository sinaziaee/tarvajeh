import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tarvajeh/utils/constants.dart';
import 'package:tarvajeh/utils/language_brain.dart';

import 'custom_list_tile.dart';

class CustomDrawer extends StatefulWidget {
  bool isPersian;
  Function navigateToFormScreen,
      navigateToGoalScreen,
      navigateToResultsScreen,
      navigateToContactScreen,
      navigateToSettingsScreen;

  CustomDrawer(
      {this.isPersian,
      this.navigateToFormScreen,
      this.navigateToSettingsScreen,
      this.navigateToContactScreen,
      this.navigateToResultsScreen,
      this.navigateToGoalScreen});

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [kGrey, kMediumGreen, ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
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
                  style: TextStyle(color: Colors.white),
                ),
                accountName: Text(
                  kAppName(widget.isPersian),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(),
              CustomListTile(
                title: kTestMeTitle(widget.isPersian),
                onTap: () {
                  // _navigateToQuestionScreen();
                  widget.navigateToFormScreen();
                },
                isPersian: widget.isPersian,
                iconData: FontAwesomeIcons.question,
              ),
              CustomListTile(
                isPersian: widget.isPersian,
                title: kGoalTitle(widget.isPersian),
                onTap: () {
                  widget.navigateToGoalScreen();
                },
                iconData: Icons.group_work,
              ),
              CustomListTile(
                isPersian: widget.isPersian,
                title: kResultTitle(widget.isPersian),
                onTap: () {
                  widget.navigateToResultsScreen();
                },
                iconData: Icons.book,
              ),
              CustomListTile(
                isPersian: widget.isPersian,
                title: kContactUsTitle(widget.isPersian),
                onTap: () {
                  widget.navigateToContactScreen();
                },
                iconData: Icons.contact_mail,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
