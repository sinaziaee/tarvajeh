import 'package:flutter/material.dart';
import 'package:tarvajeh/utils/language_brain.dart';

class SettingsScreen extends StatefulWidget {
  static String id = 'settings_screen';

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isPersian = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          kSettingsTitle(isPersian),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // SwitchListTile(
            //   title: Text(
            //     kLanguage(isPersian),
            //   ),
            //   subtitle: Icon(getFlag()),
            //   value: isPersian,
            //   onChanged: (value) {
            //     isPersian = value;
            //     setState(() {});
            //   },
            // ),
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
    );
  }

  IconData getFlag() {
    if (isPersian) {
      return Icons.flag;
    } else {
      return Icons.flag_outlined;
    }
  }
}
