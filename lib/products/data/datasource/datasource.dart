import 'package:dio/dio.dart';

class Datasource {
  //dio library to communicate with the API

  late Dio dio;

  Datasource() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://api.example.com', // Replace with your API base URL
        // connectTimeout: 5000,
        // receiveTimeout: 3000,
      ),
    );
  }

  Future<Map<String, dynamic>> fetchData(String endpoint) async {
    try {
      //we have to create cache mechanism like offline support
      final response = await dio.get(endpoint);
      return response.data as Map<String, dynamic>;
    } catch (e) {
      throw Exception('Failed to load data: $e');
    }
  }

  Future<Map<String, dynamic>> fetchReviews(List<int> productIds) async {
    try {
      final response = await dio.post(
        '/reviews',
        data: {'productIds': productIds},
      );
      return response.data as Map<String, dynamic>;
    } catch (e) {
      throw Exception('Failed to load reviews: $e');
    }
  }
}
