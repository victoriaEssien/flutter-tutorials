import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  List<String> products = ["Bed", "Sofa", "Chair"];
  List<String> productDetails = ["King size bed", "King size sofa", "Wooden comfortable chair"];
  List<int> price = [3500, 2000, 1700];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: false,
      body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {

            return ListTile(
              leading: CircleAvatar(child: Text(products[index][0]),),
              title: Text(products[index]),
              subtitle: Text(productDetails[index]),
              trailing: Text(price[index].toString()),
              onTap: () {},
            );
          }
      ),
    );
  }
}
