import 'dart:io';

import 'package:dio/dio.dart';

import '../../keys.dart';
import '../Models/Login/user_login_response_model.dart';
import '../Models/Register/user_register_response_model.dart';

class AuthService {
  final _dio = Dio(BaseOptions(baseUrl: AppKeys.baseUrl));
  Future<UserRegisterResponseModel?> registerUser({required String email, required String password}) async {
    final request = await _dio.post('signUp?key=${AppKeys.apiKey}');
    if (request.statusCode! >= HttpStatus.ok && request.statusCode! <= 299) {
      final respone = request.data;
      return respone;
    }
    return null;
  }

  Future<UserLoginResponseModel?> loginUser({required String email, required String password}) async {
    final request = await _dio.post('signInWithPasswordp?key=${AppKeys.apiKey}');
    if (request.statusCode! >= HttpStatus.ok && request.statusCode! <= 299) {
      final respone = request.data;
      return respone;
    }
    return null;
  }
}
