import 'package:flutter/material.dart';
import 'package:persian_fonts/persian_fonts.dart';
import 'package:tarvajeh/utils/constants.dart';

class ContactBox extends StatelessWidget {

  final String name, role, email, siteUrl, webLink;
  final Function onWebTap, onEmailTap;
  final bool isPersian;

  ContactBox({this.name, this.role, this.email, this.siteUrl, this.webLink, this.onEmailTap, this.onWebTap, this.isPersian});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white, width: 2,
        ),
        gradient: LinearGradient(
            colors: [kBrown, kBlueGreen, ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
    ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            name,
            textAlign: TextAlign.center,
            style: isPersian?PersianFonts.Shabnam.copyWith(
              fontSize: 20, color: Colors.white,
            ): TextStyle(fontSize: 20, color: Colors.white),
          ),
          SizedBox(height: 10,),
          Text(
            role,
            textAlign: TextAlign.center,
            style: isPersian?PersianFonts.Shabnam.copyWith(
              fontSize: 18, color: Colors.white,
            ): TextStyle(fontSize: 18, color: Colors.white),
          ),
          SizedBox(height: 10,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.email, color: Colors.white,),
                Text(
                  email,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: isPersian?PersianFonts.Shabnam.copyWith(
                    fontSize: 18, color: Colors.white,
                  ): TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Visibility(
            visible: (siteUrl.length != 0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.home, color: Colors.white,),
                  GestureDetector(
                    onTap: onWebTap,
                    child: Text(
                      webLink,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                        style: isPersian?PersianFonts.Shabnam.copyWith(
                          fontSize: 15, color: Colors.white,
                        ): TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
