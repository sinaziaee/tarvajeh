import 'dart:ui';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:persian_fonts/persian_fonts.dart';
import 'package:tarvajeh/components/costum_text.dart';
import 'package:tarvajeh/components/custom_list_tile.dart';
import 'package:tarvajeh/components/drawer.dart';
import 'package:tarvajeh/screens/contact_us_screen.dart';
import 'package:tarvajeh/screens/form_screen.dart';
import 'package:tarvajeh/screens/goal_screen.dart';
import 'package:tarvajeh/screens/question_screen.dart';
import 'package:tarvajeh/screens/result_screen.dart';
import 'package:tarvajeh/screens/settings_screen.dart';
import 'package:tarvajeh/utils/constants.dart';
import 'package:tarvajeh/utils/language_brain.dart';
import 'dart:io';
import 'about_us_screen.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isPersian = false;
  bool showProgress = false;

  @override
  Widget build(BuildContext context) {
    print(isPersian);
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [kGrey, kBlueGreen, kBrown, kOrange],
            stops: [0.0, 0.5, 0.8, 1.0],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.clear_all_sharp),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          actions: [
            GestureDetector(
              onTap: () {
                isPersian = !isPersian;
                setState(() {});
              },
              child: Container(
                margin: EdgeInsets.only(right: 30),
                child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 20,
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          'assets/images/${isPersian ? 'iran.png' : 'uk.png'}'),
                    )),
              ),
            ),
          ],
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text('Home screen'),
        ),
        drawer: CustomDrawer(
          isPersian: isPersian,
          navigateToContactScreen: () {
            navigateToScreen(ContactScreen.id);
          },
          navigateToFormScreen: () {
            checkInternetConnection();
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
        body: ModalProgressHUD(
          inAsyncCall: showProgress,
          child: Container(
            color: Colors.transparent,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  CustomText(
                    direction:
                        isPersian ? TextDirection.rtl : TextDirection.ltr,
                    text: kLine1(isPersian),
                    isPersian: isPersian,
                  ),
                  CustomText(
                    direction:
                        isPersian ? TextDirection.rtl : TextDirection.ltr,
                    text: kLine2(isPersian),
                    isPersian: isPersian,
                  ),
                  CustomText(
                    direction:
                        isPersian ? TextDirection.rtl : TextDirection.ltr,
                    text: kLine3(isPersian),
                    isPersian: isPersian,
                  ),
                  CustomText(
                    direction:
                        isPersian ? TextDirection.rtl : TextDirection.ltr,
                    text: kLine4(isPersian),
                    isPersian: isPersian,
                  ),
                  CustomText(
                    direction:
                        isPersian ? TextDirection.rtl : TextDirection.ltr,
                    text: kLine5(isPersian),
                    isPersian: isPersian,
                  ),
                  CustomText(
                    direction:
                        isPersian ? TextDirection.rtl : TextDirection.ltr,
                    text: kLine6(isPersian),
                    isPersian: isPersian,
                  ),
                  CustomText(
                    direction:
                        isPersian ? TextDirection.rtl : TextDirection.ltr,
                    text: kLine7(isPersian),
                    isPersian: isPersian,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  showLoadingDialog() {
    showDialog(
      context: context,
      child: AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        title: Text(
          isPersian
              ? 'در حال تلاش برای اتصال به سرور'
              : 'Trying to connect to the server',
          textAlign: TextAlign.center,
          style: isPersian
              ? PersianFonts.Shabnam.copyWith(
                  fontSize: 25,
                  color: Colors.black,
                )
              : TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                ),
        ),
        content: Container(
          height: 60,
          child: Center(
            child: CircularProgressIndicator(
              valueColor: new AlwaysStoppedAnimation<Color>(Colors.green),
            ),
          ),
        ),
      ),
    );
  }

  checkInternetConnection() async {
    showLoadingDialog();
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      Navigator.pop(context);

      print('not connected');
      showDialog(
        context: context,
        child: AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: Text(
            kInternetTitle(isPersian),
            textAlign: TextAlign.center,
            style: isPersian
                ? PersianFonts.Shabnam.copyWith(
              fontSize: 25,
              color: Colors.black,
            )
                : TextStyle(fontSize: 25, color: Colors.black),
          ),
          content: Container(
            child: FlatButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                isPersian ? '!!! باشه' : 'Ok !!!',
                style: isPersian
                    ? PersianFonts.Shabnam.copyWith(
                  fontSize: 20,
                  color: Colors.green,
                )
                    : TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                ),
              ),
            ),
          ),
        ),
      );
      return;
    }
    else {
      print('connected');
      Navigator.pop(context);
      navigateToScreen(FormScreen.id);
    }
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
