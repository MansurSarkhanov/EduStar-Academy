import 'package:flutter/material.dart';
import 'package:flutter_tutorial/202/Api/dio_service.dart';

import '../models/user_model.dart';

class HomeProvider extends ChangeNotifier {
  List<UserModel> items = [UserModel(body: 'sdfsdf')];
  final _apiService = ApiService();
  bool isLoading = false;
  Future<void> fetchPost() async {
    isLoading = true;
    notifyListeners();
    final test = await _apiService.getPosts();
    if (test != null) {
      items = test;
      notifyListeners();
      isLoading = false;
      notifyListeners();
    }
  }
}
