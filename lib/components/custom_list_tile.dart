import 'package:flutter/material.dart';
import 'package:persian_fonts/persian_fonts.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final IconData iconData;
  final Function onTap;
  final bool isPersian;

  CustomListTile({this.title, this.iconData, this.onTap, this.isPersian});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        highlightColor: Colors.transparent,
        child: ListTile(
          onTap: onTap,
          leading: Icon(
            iconData,
            color: Colors.white,
          ),
          title: Text(
            title,
            style: isPersian
                ? PersianFonts.Shabnam.copyWith(fontSize: 18, color: Colors.white)
                : TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
          ),
          trailing: Icon(
            Icons.arrow_right,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
