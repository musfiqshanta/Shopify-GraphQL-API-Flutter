import 'package:flutter/material.dart';

class SectionsTitle extends StatelessWidget {
  SectionsTitle({super.key, required this.title, required this.view});
  String title, view;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.start,
          ),
          Text(
            view,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor,
            ),
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }
}
