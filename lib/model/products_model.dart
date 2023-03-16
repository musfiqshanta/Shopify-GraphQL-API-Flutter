import 'package:graphql_flutter/graphql_flutter.dart';

class ShopifyProduct {
  final String id;
  final String title;
  final String description;
  final String handle;
  final double minPrice;
  final double maxPrice;
  final String imageSrc;

  ShopifyProduct({
    required this.id,
    required this.title,
    required this.description,
    required this.handle,
    required this.minPrice,
    required this.maxPrice,
    required this.imageSrc,
  });

  factory ShopifyProduct.fromJson(Map<String, dynamic> json) {
    final product = json['node'];

    final minPrice = double.parse(product['priceRange']['minVariantPrice']['amount']);
    final maxPrice = double.parse(product['priceRange']['maxVariantPrice']['amount']);
    final imageSrc = product['images']['edges'][0]['node']['originalSrc'];

    return ShopifyProduct(
      id: product['id'],
      title: product['title'],
      description: product['description'],
      handle: product['handle'],
      minPrice: minPrice,
      maxPrice: maxPrice,
      imageSrc: imageSrc,
    );
  }

  static List<ShopifyProduct> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((json) => ShopifyProduct.fromJson(json)).toList();
  }


}
