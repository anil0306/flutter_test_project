// interface ProductListNetwork {

//     suspend fun productList(nextKey: String? = null): Map<String, Any>

//     suspend fun productReviewList(ids: List<Int>): Map<String, Any>

// }

import 'package:flutter_application_products/products/data/model/products.dart';
import 'package:flutter_application_products/products/data/model/reviews.dart';

abstract class Repository {
  // Define methods that will be implemented by the concrete repository classes
  Future<List<Products>> fetchProducts();
  Future<List<Reviews>> fetchReviews(List<int> productIds);
}
