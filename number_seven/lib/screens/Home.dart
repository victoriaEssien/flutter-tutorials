import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: false,
      appBar: AppBar(title: const Text("Rows and Columns"), centerTitle: true, elevation: 0,),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: Image(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/1/1f/Woman_1.jpg/480px-Woman_1.jpg"),width: 150,)),
                Expanded(flex: 2, child: Image(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/1/1f/Woman_1.jpg/480px-Woman_1.jpg"),width: 150,)),
                Expanded(flex: 4, child: Image(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/1/1f/Woman_1.jpg/480px-Woman_1.jpg"),width: 150,)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star_border),
                Icon(Icons.star_border),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.phone, size: 35.0,),
                    Text("Phone"),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.alt_route, size: 35.0,),
                    Text("Phone"),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.share, size: 35.0,),
                    Text("Share"),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
