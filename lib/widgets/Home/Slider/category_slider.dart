import 'package:flutter/material.dart';

class ProductCategorySlider extends StatelessWidget {
  ProductCategorySlider({
    super.key,
    required this.title,
  });
  String title;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Text(title),
          )
        ],
      ),
    );
  }
}
