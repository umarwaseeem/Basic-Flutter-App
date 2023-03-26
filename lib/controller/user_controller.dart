import 'package:basic_flutter_app/constants/api_constants.dart';
import 'package:flutter/material.dart';

import '../services/api/api_service.dart';

class UserController with ChangeNotifier{
  List<dynamic> users = [];

  bool loading = false;

  Future<List<dynamic>> getUsers() async {
    loading = true;
    users = await ApiService.execute(ApiPath.users, ApiMethod.get);
    loading = false;
    notifyListeners();
    return users;
  }
}
