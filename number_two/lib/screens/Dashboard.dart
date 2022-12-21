import 'dart:math';

import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'.toUpperCase()),
        backgroundColor: Colors.blueGrey,
      ),
        body: Image.asset("images/writer.png",
        height: 300.0,
        fit: BoxFit.contain,
        ),
      // const Image(
      //   image: AssetImage("images/writer.png"),
      //   image: NetworkImage("https://i.pinimg.com/originals/f3/6c/75/f36c7509d62a9d3c6422e14a7926c0d9.jpg"),
      //   width: 200.0,
      //   height: 800.0,
      );
  }
}
