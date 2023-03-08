import 'package:flutter/material.dart';

class AccountMenu extends StatelessWidget {
  Icon lead, trail;
  String title;
  AccountMenu(
      {super.key,
      required this.lead,
      required this.trail,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: lead,
      title: Text(title),
      trailing: trail,
    );
  }
}
