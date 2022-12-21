import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        //Way to add manipulate icon and text position in buttons
      // child: Directionality(
      // textDirection: TextDirection.rtl,
      // child: ElevatedButton.icon(
      //   // child: Text("Let's Begin"),
      //   icon: Icon(Icons.add_shopping_cart_rounded),
      //   label: Text("Let's Begin"),
          child: ElevatedButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Let's Begin"),
                Icon(Icons.add_shopping_cart_rounded),
              ],
            ),
            // child: Text("Let's Begin"),
            onPressed: () {}, // null to disable button
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(20.0),
              fixedSize: Size(300, 80),
              textStyle: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),
              primary: Colors.red,
              onPrimary: Colors.white,
              elevation: 10,
              shadowColor: Colors.redAccent,
              side: BorderSide(
                color: Colors.black12,
                width: 2
              ),
              // alignment: Alignment.topLeft,
              shape: StadiumBorder()
            ),
          ),
        ),
      );
  }
}
