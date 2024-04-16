import 'package:dio/dio.dart';
import 'package:flutter_tutorial/202/Api/models/firebase_%20model.dart';
import 'package:flutter_tutorial/202/Api/models/user_model.dart';
import 'package:uuid/uuid.dart';

final class ApiService {
  final _dio = Dio(BaseOptions(
    baseUrl: 'https://jsonplaceholder.typicode.com/',
    contentType: "Application/json",
  ));

  Future<List<UserModel>?> getPosts() async {
    final response = await _dio.get('/posts', queryParameters: {"id": "5"});
    if (response.statusCode == 200) {
      final result = response.data;
      if (result is List) {
        return result.map((e) => UserModel.fromJson(e)).toList();
      }
    }
    print('Your response is Erorr');
    return null;
  }

  Future<void> firebaseSendData({required String email, required String password}) async {
    final firebaseDio = Dio(BaseOptions(baseUrl: 'https://up-toda-default-rtdb.firebaseio.com/'));
    final userModel = FirebaseModel(email: email, password: password, uuid: const Uuid().v4()).toJson();
    final request = await firebaseDio.post('users.json', data: userModel);
  }
}
