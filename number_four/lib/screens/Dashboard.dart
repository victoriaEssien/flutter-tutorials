import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 350,
        height: 250.0,
        padding: EdgeInsets.all(20.0),
        margin: EdgeInsets.all(50.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.blueGrey,
            // borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              color: Colors.grey,
              width: 6.0,
            ),
          shape: BoxShape.circle,
          image: DecorationImage(
            image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/1/1f/Woman_1.jpg/480px-Woman_1.jpg"),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              blurRadius: 7,
              spreadRadius: 5,
              offset: Offset(2,2),
            ),
          ],
        ),
        // child: Text("Boring",
        // style: TextStyle(
        //   fontSize: 40,
        // fontWeight: FontWeight.bold
        // ),
        // ),
      ),
    );
  }
}
