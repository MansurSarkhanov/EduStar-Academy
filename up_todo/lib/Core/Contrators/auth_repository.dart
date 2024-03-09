import 'package:multiple_result/multiple_result.dart';
import 'package:up_todo/Core/Models/Register/user_register_response_model.dart';

import '../Models/Failure/auth_error_model.dart';
import '../Models/Login/user_login_response_model.dart';

abstract class IAuthRepository {
  Future<Result<UserLoginResponseModel, AuthErrorModel>?> loginUser({required String email, required String password});
  Future<Result<UserRegisterResponseModel, AuthErrorModel>?> registerUser(
      {required String email, required String password});
}
