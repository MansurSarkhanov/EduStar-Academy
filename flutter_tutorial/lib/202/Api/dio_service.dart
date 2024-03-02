import 'package:dio/dio.dart';
import 'package:flutter_tutorial/202/Api/models/user_model.dart';

final class ApiService {
  final _dio = Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com/', contentType: "Application/json"));

  Future<List<UserModel>?> getPosts() async {
    final response = await _dio.get('/posts');
    if (response.statusCode == 200) {
      final result = response.data;
      if (result is List) {
        return result.map((e) => UserModel.fromJson(e)).toList();
      }
    }
    print('Your response is Erorr');
    return null;
  }
}
