import 'package:flutter/material.dart';

enum ProductTypeEnum {Downloadable, Deliverable}

class MyRadioButton extends StatelessWidget {
  const MyRadioButton({Key? key,
    required this.title,
    required this.value,
    required this.selectedProductType,
    required this.onChanged,
  }) : super(key: key);

  final String title;
  final ProductTypeEnum value;
  final ProductTypeEnum? selectedProductType;
  final Function(ProductTypeEnum?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RadioListTile<ProductTypeEnum>(
        title: Text(title),
        value: value,
        groupValue: selectedProductType,
        contentPadding: EdgeInsets.all(0.0),
        dense: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0)
        ),
        tileColor: Colors.deepPurple.shade50,
        onChanged: onChanged,
      )
    );
  }
}
