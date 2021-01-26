import 'package:flutter/material.dart';
import 'package:persian_fonts/persian_fonts.dart';
import 'package:tarvajeh/components/contact_box.dart';
import 'package:tarvajeh/utils/constants.dart';
import 'package:tarvajeh/utils/language_brain.dart';

class ContactScreen extends StatefulWidget {
  static String id = 'contact_us_screen';

  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
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
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            kContactUsTitle(isPersian),
            style: isPersian?PersianFonts.Shabnam.copyWith(
              fontSize: 22, color: Colors.white,
            ): TextStyle(fontSize: 22, color: Colors.white),
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
            padding: EdgeInsets.symmetric(horizontal: 20,),
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                ContactBox(
                  isPersian: isPersian,
                  email: kProductOwnerEmail,
                  name: kNameProductOwner(isPersian),
                  role: kRoleProductOwner(isPersian),
                  onEmailTap: (){},
                  onWebTap: (){},
                  webLink: 'webpages.iust.ac.ir/h_rahmani',
                  siteUrl: 'http://webpages.iust.ac.ir/h_rahmani/',
                ),
                SizedBox(
                  height: 20,
                ),
                ContactBox(
                  isPersian: isPersian,
                  email: kDevEmail,
                  name: kNameDev(isPersian),
                  role: kRoleDev(isPersian),
                  onEmailTap: (){},
                  webLink: '',
                  onWebTap: (){},
                  siteUrl: '',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
