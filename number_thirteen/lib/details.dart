import 'package:flutter/material.dart';
import 'package:navigation/models/product_model.dart';

class Details extends StatelessWidget {
  Details({Key? key, required this.productDetails}) : super(key: key);

  ProductDetails productDetails;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: const Text("Details"),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(4.0),
        child: ListView(
          children: [
            ListTile(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1.0, color: Colors.grey.shade300)),
              leading: IconButton(
                  icon: const Icon(Icons.shopping_bag_outlined,
                    color: Colors.deepPurple),
                onPressed: () {},
              ),
            title: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                productDetails.isTopProduct
                ? const Chip(
                    label: Text("Top Product"),
                    backgroundColor: Colors.deepPurple,
                    labelStyle: TextStyle(color: Colors.white))
                : Text(""),
                Text(
                  productDetails.productName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 18.0)),
                Text(productDetails.productDetails),
                Row(
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        primary: Colors.purple,
                      ),
                      child: Row(
                        children: [
                          Text(productDetails.productSize,
                          style: TextStyle(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold,
                          ),),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
              ),
          ],
        ),
      ),
    );
  }
}
