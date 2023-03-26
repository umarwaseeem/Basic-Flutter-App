import 'dart:convert';

import 'package:basic_flutter_app/constants/api_constants.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static dynamic execute(ApiPath path, ApiMethod method,
      {Map<String, dynamic>? body,
      Map<String, dynamic>? queryParameters}) async {
    try {
      switch (method) {
        case ApiMethod.get:
          var response = await http.get(Uri.parse(apiEndPoint(path)));

          if (response.statusCode == 200) {
            return json.decode(response.body);
          } else {
            throw Exception('Failed to load data');
          }

        default:
          break;
      }
    } catch (e) {
      Fluttertoast.showToast(msg: e.toString());
    }
  }
}
