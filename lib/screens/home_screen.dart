import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tarvajeh/components/custom_list_tile.dart';
import 'package:tarvajeh/utils/language_brain.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
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
                  kAppName(false),
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(),
              CustomListTile(
                title: kTestMeTitle(false),
                onTap: (){

                },
                iconData: FontAwesomeIcons.question,
              ),
              CustomListTile(
                title: kGoalTitle(false),
                onTap: (){

                },
                iconData: Icons.group_work,
              ),
              CustomListTile(
                title: kResultTitle(false),
                onTap: (){

                },
                iconData: Icons.book,
              ),
              CustomListTile(
                title: kContactUsTitle(false),
                onTap: (){

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
