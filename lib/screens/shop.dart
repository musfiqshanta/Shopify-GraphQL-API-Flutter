import 'package:flutter/material.dart';

import '../main.dart';
import '../widgets/Common/product_card.dart';


class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width / 1.4,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      focusColor: Colors.red,
                      hoverColor: Colors.green,
                      icon: Icon(Icons.search),
                    ),
                  )),
              SizedBox(
                  child: IconButton(
                      onPressed: () {}, icon: Icon(Icons.filter_list))),
            ]),
            SizedBox(
              height: 20,
            ),
            Wrap(
              alignment: WrapAlignment.spaceBetween,
              spacing: 10.0,
              runSpacing: 10,
              clipBehavior: Clip.none,
              runAlignment: WrapAlignment.spaceBetween,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: const [
                // ProductCard(),
                // ProductCard(),
                // ProductCard(),
                // ProductCard(),
                // ProductCard(),
                // ProductCard(),
                // ProductCard(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
