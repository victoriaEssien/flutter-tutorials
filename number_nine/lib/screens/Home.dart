import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigation Drawer"),),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountEmail: Text("codebreaker@gmail.com"),
              accountName: Text("Victoria Essien"),
              currentAccountPicture: CircleAvatar(foregroundImage: NetworkImage("https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,h_250,q_auto:good,w_250/v1/gcs/platform-data-dsc/avatars/victoria_essien_ebong_utIGlIA.jpg"),),
              // otherAccountsPictures: [
              //   CircleAvatar(foregroundImage: NetworkImage("https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,h_250,q_auto:good,w_250/v1/gcs/platform-data-dsc/avatars/victoria_essien_ebong_utIGlIA.jpg"),),
              // ],
            ),
            ListTile(leading: Icon(Icons.home), title: Text("Home"), onTap: () {},),
            ListTile(leading: Icon(Icons.shopping_cart), title: Text("Shop"), onTap: () {},),
            ListTile(leading: Icon(Icons.favorite), title: Text("Favorites"), onTap: () {},),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text("Labels"),
            ),
            ListTile(leading: Icon(Icons.label), title: Text("Red"), onTap: () {},),
            ListTile(leading: Icon(Icons.label), title: Text("Green"), onTap: () {},),
            ListTile(leading: Icon(Icons.label), title: Text("Blue"), onTap: () {},),
          ],
        ),
      ),
      // extendBodyBehindAppBar: false,
    );
  }
}
