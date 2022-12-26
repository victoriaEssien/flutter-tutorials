import 'package:flutter/material.dart';
import 'package:navigation/details.dart';
import 'package:navigation/models/product_model.dart';
import 'package:navigation/widgets/my_button.dart';
import 'package:navigation/widgets/my_radio_button.dart';
import 'package:navigation/widgets/my_text_field.dart';


class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {

  _MyFormState() {
    _selectedVal = _productSizeList[0];
  }

  var _productName;
  final _productController = TextEditingController();
  final _productDescController = TextEditingController();

  bool? _checkbox, _topProduct  = false;
  ProductTypeEnum? _productTypeEnum;

  final _productSizeList = ["Small", "Medium", "Large", "XLarge"];
  String? _selectedVal = "";

  final _formKey = GlobalKey<FormState>();

  // @override
  // void initState() {
  //   super.initState();
  //
  //   _productController.addListener(_updateText);
  // }

  @override
  void dispose() {
    _productController.dispose();
    _productDescController.dispose();
    super.dispose();
  }

  void _updateText() {
    // setState(() {
    //   _productName = _productController.text;
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Form"),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const Text("Product",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            ),
            const Text("Add product details in the form below"),
            const SizedBox(height: 30.0),

            Form(
              key: _formKey,
              child: Column(
                children: [
                  MyTextField(
                    myController: _productController,
                    fieldName: "Product Name",
                    myIcon: Icons.propane_outlined,
                    prefixIconColor: Colors.deepPurple.shade300,
                  ),
                  const SizedBox(height: 10.0),
                  MyTextField(
                      fieldName: "Product Description",
                      myController: _productDescController,
                    myIcon: Icons.description_outlined,
                    prefixIconColor: Colors.deepPurple.shade300,
                  ),
                  SizedBox(height: 30.0),

                  // Two types of checkbox

                  // 1. CheckBox
                  // Checkbox(
                  //   checkColor: Colors.white,
                  //   activeColor: Colors.deepPurple,
                  //   tristate: true,
                  //   value: _checkbox,
                  //   onChanged: (val) {
                  //     setState(() { _checkbox = val;});
                  //   },
                  // ),


                  // 2. CheckBoxListTile

                  CheckboxListTile(
                    contentPadding: EdgeInsets.all(0.0),
                    tileColor: Colors.deepPurple.shade50,
                    checkColor: Colors.white,
                    activeColor: Colors.deepPurple,
                    title: Text("Top Product"),
                    tristate: true,
                    value: _topProduct,
                    onChanged: (val) {
                      setState(() {
                        _topProduct = val;
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  SizedBox(height: 10.0,),

                  Row(
                    children: [
                      MyRadioButton(
                          title: ProductTypeEnum.Deliverable.name,
                          value: ProductTypeEnum.Deliverable,
                          selectedProductType: _productTypeEnum,
                          onChanged: (val) {
                            setState(() {
                              _productTypeEnum = val;
                            });
                          }
                      ),
                      SizedBox(width: 5.0,),

                      MyRadioButton(
                          title: ProductTypeEnum.Downloadable.name,
                          value: ProductTypeEnum.Downloadable,
                          selectedProductType: _productTypeEnum,
                          onChanged: (val) {
                            setState(() {
                              _productTypeEnum = val;
                            });
                          }
                      ),
                    ],
                  ),

                  // Dropdown Button
                  // DropdownButton(
                  //   value: _selectedVal,
                  //   items: _productSizeList.map(
                  //       (e) => DropdownMenuItem(child: Text(e), value: e,)
                  //   ).toList(),
                  //   onChanged: (val) {
                  //     setState(() {
                  //       _selectedVal = val as String;
                  //     });
                  //   },
                  // ),

                  SizedBox(height: 10.0,),

                  DropdownButtonFormField(
                    value: _selectedVal,
                    items: _productSizeList.map(
                            (e) => DropdownMenuItem(child: Text(e), value: e,)
                    ).toList(),
                    onChanged: (val) {
                      setState(() {
                        _selectedVal = val as String;
                      });
                    },
                    icon: const Icon(
                      Icons.arrow_drop_down_circle,
                      color: Colors.deepPurple,
                    ),
                    dropdownColor: Colors.deepPurple.shade50,
                    decoration: InputDecoration(
                      labelText: "Product Sizes",
                      prefixIcon: Icon(
                        Icons.accessibility_new_rounded,
                        color: Colors.deepPurple,
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),

                  const SizedBox(height: 20.0),
                  MyButton(
                    onPress: () {
                      if (_formKey.currentState!.validate()) {
                        ProductDetails productDetails = ProductDetails();
                        productDetails.productName = _productController.text;
                        productDetails.productDetails = _productDescController.text;
                        productDetails.isTopProduct = _topProduct!;
                        // productDetails.productType = _productTypeEnum;
                        productDetails.productSize = _selectedVal!;

                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return Details(productDetails: productDetails);
                        }));
                      }
                    },
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