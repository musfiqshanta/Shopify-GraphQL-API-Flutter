import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:flutter/material.dart';
import 'package:topautoupgrades/api/query.dart';

import '../model/products_model.dart';
import '../screens/homepage.dart';

class GraphQLConfig {
  static Future<List<ShopifyProduct>> fetchAllProducts(int limit) async {
    print(limit);
    final QueryOptions options = QueryOptions(
      document: gql(product),
      variables: {
        'nRepositories': limit,
      },
    );
    final GraphQLClient client = GraphQLClient(
      cache: GraphQLCache(),
      link: HttpLink(
          "https://vacuumhub-9671.myshopify.com/admin/api/2023-01/graphql.json",
          defaultHeaders: {
            'X-Shopify-Access-Token': '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',
          }),
    );

    final result = await client.query(options);

    if (result.hasException) {
      throw result.exception!;
    }

    final products = result.data!['products']['edges'];

    return ShopifyProduct.fromJsonList(products);
  }
}
