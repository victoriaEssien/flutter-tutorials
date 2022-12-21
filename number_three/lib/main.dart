import 'package:flutter/material.dart';
import 'screens/Dashboard.dart';

void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'My Flutter App',
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        home: Dashboard()
    );
  }
}
