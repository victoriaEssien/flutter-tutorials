import 'package:flutter/material.dart';

class ChatListTileWidget extends StatelessWidget {

  String title, subtitle, trailing;
  String leadingIcon;

  ChatListTileWidget({Key? key,
    required this.title,
    required this.subtitle,
    required this.leadingIcon,
    required this.trailing,
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(leadingIcon),
        ),
        title: Padding(
          padding: EdgeInsets.only(bottom: 10.0),
          child: Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
        ),
        subtitle: Text(subtitle),
        trailing: Text(trailing),
      ),
    );
  }
}