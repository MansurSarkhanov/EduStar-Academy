import 'dart:io';

import 'package:dio/dio.dart';
import 'package:up_todo/Core/Models/Login/user_login_request_model.dart';

import '../Core/Models/Login/user_login_response_model.dart';
import '../Core/Models/Register/user_register_request_model.dart';
import '../Core/Models/Register/user_register_response_model.dart';
import '../keys.dart';

class AuthService {
  final _dio =
      Dio(BaseOptions(baseUrl: "https://identitytoolkit.googleapis.com/v1/accounts:", contentType: 'application/json'));
  Future<UserRegisterResponseModel?> registerUser({required String email, required String password}) async {
    final userModel = UserRegisterRequestModel(email: email, password: password).toJson();
    print("test");

    final request = await _dio.post('signUp?key=${AppKeys.apiKey}', data: userModel);
    if (request.statusCode! >= HttpStatus.ok && request.statusCode! <= 299) {
      final respone = UserRegisterResponseModel.fromJson(request.data);
      print(respone.idToken);

      return respone;
    }
    return null;
  }

  Future<UserLoginResponseModel?> loginUser({required String email, required String password}) async {
    final userModel = UserLoginRequestModel(email: email, password: password).toJson();
    print('Test');

    final request = await _dio.post('signInWithPassword?key=${AppKeys.apiKey}', data: userModel);
    print('Test 123');

    if (request.statusCode! >= HttpStatus.ok && request.statusCode! <= 299) {
      final respone = UserLoginResponseModel.fromJson(request.data);
      print(respone.idToken);
      print('object');

      return respone;
    }
    return null;
  }
}
