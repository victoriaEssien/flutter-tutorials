import 'package:flutter/material.dart';
import 'package:navigation/form.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Navigation",
      theme: ThemeData.light(),
      home: MyForm(),
    );
  }
}
