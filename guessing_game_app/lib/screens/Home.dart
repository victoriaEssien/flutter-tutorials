import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController controller = TextEditingController();
  int randomNumber = Random().nextInt(10);
  String message = "";

  checkAnswer(int userInput) {
    setState(() {
      if (userInput == randomNumber) {
        message = 'Congratulations!, you guessed right! 😁🎉';
      } else if (userInput < randomNumber) {
        message = 'Guess is too low 😥!';
      } else {
        message = 'Guess is too high! 😥';
      }
      controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Guessing Game"),
      ),
      body: Center(
        child: Column(
          children: <Widget> [
            Padding(
              padding: EdgeInsets.only(top: 50.0, left: 15.0, bottom: 20.0),
              child: Text("Can you guess the number?",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                ),
              ),
            ),
            Text("My number is between 0 - 10"),
            Padding(
              padding: const EdgeInsets.only(top:10.0, bottom: 20.0),
              child: TextFormField(
                controller: controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  constraints: BoxConstraints(
                    maxWidth: 300.0,
                  ),
                  border: OutlineInputBorder(),
                  hintText: "Enter a number",
                ),
              ),
            ),
            Text("$message", style: TextStyle(fontSize: 15),),
            SizedBox(
              width: 300,
              height: 50,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: ElevatedButton(
                  child: const Text("Guess"),
                  onPressed: () {
                    checkAnswer(int.parse(controller.text));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
  // int randomNumber() { return Random().nextInt(20);}

}


