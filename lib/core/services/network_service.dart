import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

abstract class BaseNetworkService {
  Future<dynamic> getGetApiResponse(String url);
}

class NetworkService extends BaseNetworkService {
  @override
  Future<dynamic> getGetApiResponse(String url) async {
    try {
      var response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        var jsonResponse = jsonDecode(response.body);

        return jsonResponse;
      } else {
        debugPrint('Request failed with status: ${response.statusCode}.');
        throw Exception('Request failed with status: ${response.statusCode}.');
      }
    } catch (e) {
      throw Exception(
          'Something wrong happened while requesting http service $e');
    }
  }
}
