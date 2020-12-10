import 'package:flutter/material.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: Text(
          kContactUsTitle(isPersian),
        ),
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
    );
  }
}
