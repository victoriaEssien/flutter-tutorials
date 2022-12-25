import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stateful Widgets"),
          centerTitle: true,
        ),
        body: StatefulClass(),
      ),
    );
  }
}

class StatefulClass extends StatefulWidget {
  const StatefulClass({Key? key}) : super(key: key);

  @override
  State<StatefulClass> createState() => _StatefulClassState();
}

class _StatefulClassState extends State<StatefulClass> {

  bool liked = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text("Nike Shoes"),
          trailing: IconButton(
            icon: liked? (Icon(Icons.favorite)) : (Icon(Icons.favorite_border)),
            onPressed: () {
              setState(() => liked = !liked);
            },
          ),
        ),
      ],
    );
  }
}
