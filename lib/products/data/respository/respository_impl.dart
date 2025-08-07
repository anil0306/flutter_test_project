import 'package:flutter_application_products/products/data/datasource/datasource.dart';
import 'package:flutter_application_products/products/data/model/products.dart';
import 'package:flutter_application_products/products/data/model/reviews.dart';
import 'package:flutter_application_products/products/domain/repository/respository.dart';

class RespositoryImpl implements Repository {
  //fetch data from the datasource
  //SSOT - MAIN CLASS which handles all data operations - local and remote

  //get_it
  Datasource _datasource = Datasource();

  // Implement the methods defined in the Repository interface

  @override
  Future<List<Products>> fetchProducts() {
    // Logic to fetch products from a data source (e.g., API, database)
    // This is just a placeholder implementation
    // In a real implementation, you would call the datasource to get the data
    // and convert it to a List<Products>
    // For example, you might use Dio to fetch data from an API and then map it

    return _datasource
        .fetchData('/products')
        .then((data) {
          return (data['products'] as List)
              .map(
                (item) => Products.fromMap(item as Map<String, dynamic>),
              ) // conversion from json to dart object
              .toList();
        })
        .catchError((error) {
          throw Exception('Failed to fetch products: $error');
        });

    // return Future.value([]);
  }

  @override
  Future<List<Reviews>> fetchReviews(List<int> productIds) {
    // Logic to fetch reviews for the given product IDs from a data source
    // This is just a placeholder implementation
    return Future.value([]);
  }
}
