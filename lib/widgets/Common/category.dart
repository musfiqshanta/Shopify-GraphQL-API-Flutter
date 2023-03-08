

import 'package:flutter/material.dart';

class ProductCategory extends StatelessWidget {
  const ProductCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: Image(
              fit: BoxFit.cover,
              width: 200,
              height: 150,
              image: NetworkImage(
                  "https://cdn.shopify.com/s/files/1/0706/7956/0502/files/Untitled-2_536020a5-4ed4-43b7-9c7f-48c20022d11a_830x550.png?v=1673417388")),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Cleaning",
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

