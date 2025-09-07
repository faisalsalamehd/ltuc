import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

class ApiClient {
  static Future<http.Response> post({
    required String url,
    required Map<String, dynamic> body,
    required bool withAuth,
  }) async {
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };
    if (withAuth) {
      headers = {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer your_token_here',
      };
    }
    http.Response response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: jsonEncode(body),
    );
    error(response, url);
    return response;
  }

  static void error(http.Response response, String url) {
    if (response.statusCode == 200) {
      // اعتبرها مشكلة
      log('Error: ${response.statusCode}');
      log('Url: $url');
      // you show for user snakbar or error message in UI
      // throw Exception('Bad Request');
    }
  }
}
