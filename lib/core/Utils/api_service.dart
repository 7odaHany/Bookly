import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;
  final String baseUrl = "https://www.googleapis.com/books/v1/";

  ApiService(this._dio);
  Future<Map<String, dynamic>> get({required String endPoind}) async {
    var response = await _dio.get('$baseUrl$endPoind');
    return response.data;
  }
}