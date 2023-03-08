import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      color: Color.fromARGB(255, 237, 236, 236),
      child: Column(children: [
        CartProductList(),
        CartProductList(),
        CartProductList(),
        CartProductList(),
        CartProductList(),
        CartProductList(),
        CartProductList(),
      ]),
    ));
  }
}

class CartProductList extends StatelessWidget {
  const CartProductList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(
                  "https://cdn.shopify.com/s/files/1/0706/7956/0502/files/Untitled-2_536020a5-4ed4-43b7-9c7f-48c20022d11a_830x550.png?v=1673417388",
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Car Cute Little Yellow Duck With"),
                  Text("\$150"),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                      child: IconButton(
                          alignment: Alignment.center,
                          onPressed: () {},
                          icon: Icon(
                            Icons.add,
                            size: 22,
                          ))),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "1",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 221, 221, 221),
                      child: IconButton(
                          onPressed: () {}, icon: Icon(Icons.remove))),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
