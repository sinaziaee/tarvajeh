import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tarvajeh/screens/about_us_screen.dart';
import 'package:tarvajeh/screens/contact_us_screen.dart';
import 'package:tarvajeh/screens/goal_screen.dart';
import 'package:tarvajeh/screens/home_screen.dart';
import 'package:tarvajeh/screens/intro_screen.dart';
import 'package:tarvajeh/screens/question_screen.dart';
import 'package:tarvajeh/screens/result_screen.dart';
import 'package:tarvajeh/screens/settings_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // localizationsDelegates: [
      //   // ... app-specific localization delegate[s] here
      //   AppLocalizations.delegate,
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      // ],
      // supportedLocales: [
      //   const Locale('en', ''), // English, no country code
      //   const Locale('ar', ''), // Arabic, no country code
      // ],
      //
      // localeResolutionCallback: (locale, supportedLocales){
      //   for (var supportedLocale in supportedLocales) {
      //     if (supportedLocale.languageCode == locale.languageCode){
      //       return supportedLocale;
      //     }
      //     // if (supportedLocale.languageCode == locale.languageCode && supportedLocale.countryCode == locale.countryCode){
      //     //   return supportedLocale;
      //     // }
      //   }
      //   return supportedLocales.first;
      // },
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        AboutScreen.id: (context) => AboutScreen(),
        ResultsScreen.id: (context) => ResultsScreen(),
        SettingsScreen.id: (context) => SettingsScreen(),
        QuestionScreen.id: (context) => QuestionScreen(),
        GoalScreen.id: (context) => GoalScreen(),
        IntroScreen.id: (context) => IntroScreen(),
        ContactScreen.id: (context) => ContactScreen(),
      },
    );
  }
}
