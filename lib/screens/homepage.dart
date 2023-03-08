import 'package:flutter/material.dart';
import '../widgets/Common/category.dart';
import '../widgets/Common/product_card.dart';
import '../widgets/Common/recomanded.dart';
import '../widgets/Home/Slider/header_slider.dart';
import '../widgets/Home/Slider/category_slider.dart';
import '../widgets/Home/section_title.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<String> images = [
    'https://cdn.shopify.com/s/files/1/0706/7956/0502/files/Untitled-2_536020a5-4ed4-43b7-9c7f-48c20022d11a_830x550.png?v=1673417388;',
    'https://cdn.shopify.com/s/files/1/0706/7956/0502/files/man-gff8396b3c_1920_65ab806e-86ba-4a68-b5ee-e9e7d488e5f7_830x550.jpg?v=1674640981',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 10, left: 8, right: 8, bottom: 20),
        child: Column(
          //  crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            HeaderSlider(images: images),
            SizedBox(
              height: 15,
            ),
            SectionsTitle(
              title: "Our Products",
              view: "View All +",
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ListView(
                  shrinkWrap: true,
                  primary: false,
                  scrollDirection: Axis.horizontal,
                  children: [
                    ProductCategorySlider(title: "Accessories"),
                    ProductCategorySlider(title: "Maintenance & Care"),
                    ProductCategorySlider(title: "Lighting"),
                    ProductCategorySlider(title: "Auto Replacement Parts"),
                  ],
                ),
              ),
            ),
            Wrap(
              //runAlignment: WrapAlignment.spaceBetween,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: const [
                ProductCard(),
                ProductCard(),
                ProductCard(),
                ProductCard(),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SectionsTitle(
              title: "Categories",
              view: "View All +",
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  ProductCategory(),
                  SizedBox(
                    width: 10,
                  ),
                  ProductCategory(),
                  SizedBox(
                    width: 10,
                  ),
                  ProductCategory(),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            SectionsTitle(
              title: "Recomanded Products",
              view: "",
            ),
            SizedBox(
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.none,
                shrinkWrap: false,
                children: const [
                  RecomandedSingleProduct(),
                  RecomandedSingleProduct(),
                  RecomandedSingleProduct(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
