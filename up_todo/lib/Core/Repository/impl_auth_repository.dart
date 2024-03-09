import 'package:multiple_result/multiple_result.dart';
import 'package:up_todo/Core/Contrators/auth_repository.dart';
import 'package:up_todo/Core/Models/Failure/auth_error_model.dart';
import 'package:up_todo/Core/Models/Login/user_login_response_model.dart';
import 'package:up_todo/Core/Models/Register/user_register_response_model.dart';
import 'package:up_todo/Core/Service/auth_service.dart';

class ImplAuthRepository implements IAuthRepository {
  final _authService = AuthService();
  @override
  Future<Result<UserLoginResponseModel, AuthErrorModel>?> loginUser(
      {required String email, required String password}) async {
    try {
      final response = await _authService.loginUser(email: email, password: password);
      return Success(response!);
    } catch (e) {
      return Error(AuthErrorModel(error: Problem(message: e.toString())));
    }
  }

  @override
  Future<Result<UserRegisterResponseModel, AuthErrorModel>?> registerUser(
      {required String email, required String password}) async {
    try {
      final response = await _authService.registerUser(email: email, password: password);
      return Success(response!);
    } catch (e) {
      return Error(AuthErrorModel(error: Problem(message: e.toString())));
    }
  }
}
