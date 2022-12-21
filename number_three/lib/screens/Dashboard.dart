import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: IconButton(
          icon: Icon(FontAwesomeIcons.angular),
          // icon: Icon(Icons.alt_route_rounded),
          onPressed: () {},
          iconSize: 100,
          color: Colors.lightGreenAccent,
          splashColor: Colors.white,
          highlightColor: Colors.red,
        ),
      ),
    );
  }
}
