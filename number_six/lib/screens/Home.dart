import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu_rounded), onPressed: (){},),
        title: Text("Home"),
        actions: [
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: (){},),
          IconButton(icon: Icon(Icons.search_rounded), onPressed: (){},),
          IconButton(icon: Icon(Icons.menu_book_rounded), onPressed: (){},),
        ],
        elevation: 0,
        // centerTitle: true,
        backgroundColor: Colors.purple.withOpacity(0.7),
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))
        // ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Appbar Tutorial", style: TextStyle(fontSize: 22),),
            Text("CodeBreaker.exe", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.purple),)
          ],
        ),
      ),
    );
  }
}
