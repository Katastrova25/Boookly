

import 'package:dio/dio.dart';

class ApiService {
 final String _baseUrl = "https://www.googleapis.com/";
final Dio dio;
  ApiService({required this.dio});

  getBooks({required String endpoint}) async {
    var response = await dio.get('$_baseUrl/$endpoint');
    return response.data;
  }
}
