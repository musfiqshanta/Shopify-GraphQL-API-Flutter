import 'package:flutter/material.dart';

class OrderIconWidget extends StatelessWidget {
  Icon icon;
  String title;
  OrderIconWidget({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          iconSize: 40,
          onPressed: () {},
          icon: icon,
        ),
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
