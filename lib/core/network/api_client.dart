import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';
import '../error/exceptions.dart';

class ApiClient {
  final http.Client _client;
  final InternetConnectionChecker _connectionChecker;

  ApiClient({
    required http.Client client,
    required InternetConnectionChecker connectionChecker,
  })  : _client = client,
        _connectionChecker = connectionChecker;

  Future<bool> get isConnected => _connectionChecker.hasConnection;

  Future<dynamic> get(String url) async {
    if (!await isConnected) {
      throw NetworkException(message: 'No internet connection');
    }

    final response = await _client.get(Uri.parse(url));

    return _processResponse(response);
  }

  dynamic _processResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        return json.decode(response.body);
      case 400:
        throw BadRequestException(message: 'Bad request');
      case 401:
      case 403:
        throw UnauthorizedException(message: 'Unauthorized');
      case 404:
        throw NotFoundException(message: 'Not found');
      case 500:
      default:
        throw ServerException(
            message: 'Error occurred with status code: ${response.statusCode}');
    }
  }
}
