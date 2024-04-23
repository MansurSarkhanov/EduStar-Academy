import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:up_todo/Cache/cach_manager.dart';
import 'package:up_todo/Core/Models/Failure/auth_error_model.dart';
import 'package:up_todo/Core/Models/Login/user_login_response_model.dart';
import 'package:up_todo/Core/Models/Register/user_register_response_model.dart';
import 'package:up_todo/Domain/Contrators/auth_repository.dart';
import 'package:up_todo/Service/auth_service.dart';

import '../../Core/Models/user_firestore_model.dart';

class ImplAuthRepository implements IAuthRepository {
  final _authService = AuthService();
  final _cacheManager = CacheManager();
  final _firebaseDB = FirebaseFirestore.instance;
  @override
  Future<Result<UserLoginResponseModel, AuthErrorModel>?> loginUser(
      {required String email, required String password}) async {
    try {
      final response = await _authService.loginUser(email: email, password: password);
      _cacheManager.saveString(key: 'token', value: response!.localId!);
      _cacheManager.saveBool(key: 'logged', value: true);

      return Success(response);
    } catch (e) {
      return Error(AuthErrorModel(error: Problem(message: e.toString())));
    }
  }

  @override
  Future<Result<UserRegisterResponseModel, AuthErrorModel>?> registerUser(
      {required String email, required String password, required String username, required String image}) async {
    try {
      final response = await _authService.registerUser(email: email, password: password);

      final user = UserFirestoreModel(email: email, password: password, username: username, image: image).toJson();

      _firebaseDB.collection("users").doc(response!.localId!).set(user);
      _cacheManager.saveString(key: 'token', value: response.localId!);
      _cacheManager.saveBool(key: 'logged', value: true);
      return Success(response);
    } catch (e) {
      return Error(AuthErrorModel(error: Problem(message: e.toString())));
    }
  }

  @override
  Future<Result<UserRegisterResponseModel, AuthErrorModel>?> googleLogin() {
    // TODO: implement googleLogin
    throw UnimplementedError();
  }
}
