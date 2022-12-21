import 'package:flutter/material.dart';
import 'screens/ChatScreen.dart';


void main() => runApp(const MyApp());



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My Flutter App',
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        home: ChatScreen()
    );
  }
}