import 'package:flutter/material.dart';


class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    required this.onPress
  }) : super(key: key);

  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child:  OutlinedButton(
        onPressed: onPress,
        // onPressed: () {
        //   Navigator.push(
        //       context,
        //       MaterialPageRoute(builder: (context) {
        //         return Details(
        //           productName: this.productName,
        //           productDescription: this.productDescription,
        //         );
        //       }),
        //   );
        // },
        style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
        child: Text("Submit".toUpperCase(),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.deepPurple,
          ),
        ),
      ),
    );
  }
}