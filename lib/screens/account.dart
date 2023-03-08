import 'package:flutter/material.dart';

import '../widgets/Account/iteams_card.dart';
import '../widgets/Account/menu_items.dart';
import '../widgets/Account/order_icons.dart';

class Account extends StatefulWidget {
const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        clipBehavior: Clip.none,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: AlignmentDirectional.bottomCenter,
              //  fit: StackFit.passthrough,
              children: [
                Image.network(
                  "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=800",
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                  height: 200,
                ),
                const Positioned(
                  bottom: -50,
                  child: Center(
                    child: CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                            "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=800")),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 70,
            ),
            Center(
              child: const Text(
                "Musfiq Shanta",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Center(
              child: const Text(
                "Good Morning",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff079992)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "My Order",
              textAlign: TextAlign.start,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OrderIconWidget(
                  title: "To Pay",
                  icon: Icon(Icons.payment),
                ),
                OrderIconWidget(
                  title: "To Ship",
                  icon: Icon(Icons.local_shipping),
                ),
                OrderIconWidget(
                  title: "To Receive",
                  icon: Icon(Icons.backpack_outlined),
                ),
                OrderIconWidget(
                  title: "To Pay",
                  icon: Icon(Icons.payment),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DetailsCard(
                  title: "Order",
                  items: "27",
                  prefix: "Items",
                ),
                DetailsCard(
                  title: "Cart",
                  items: "4",
                  prefix: "Items",
                ),
                DetailsCard(
                  title: "WishList",
                  items: "29",
                  prefix: "Items",
                ),
                DetailsCard(
                  title: "Spend",
                  items: "700",
                  prefix: "USD",
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            AccountMenu(
              lead: const Icon(Icons.money_off_csred_sharp),
              title: "Order",
              trail: Icon(Icons.arrow_forward_ios),
            ),
            AccountMenu(
              lead: Icon(Icons.person),
              title: "Personal Details",
              trail: Icon(Icons.arrow_forward_ios),
            ),
            AccountMenu(
                lead: Icon(Icons.info),
                title: "General",
                trail: Icon(Icons.arrow_forward_ios)),
            AccountMenu(
              lead: const Icon(Icons.money_off_csred_sharp),
              title: "Order",
              trail: Icon(Icons.arrow_forward_ios),
            ),
            AccountMenu(
              lead: Icon(Icons.local_shipping),
              title: "Shipping Adress",
              trail: Icon(Icons.arrow_forward_ios),
            ),
            const ListTile(
              leading: Icon(Icons.logout),
              title: Text("LogOut"),
            ),
          ],
        ),
      ),
    );
  }
}
