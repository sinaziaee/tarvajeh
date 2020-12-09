import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final IconData iconData;
  final Function onTap;

  CustomListTile({this.title, this.iconData, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Icon(iconData),
      title: Text(title),
      trailing: Icon(Icons.arrow_right),
    );
  }
}
