import 'package:flutter/material.dart';
import 'package:up_todo/Core/Repository/impl_auth_repository.dart';

class LoginProvider extends ChangeNotifier {
  final _authRepository = ImplAuthRepository();

  Future<void> loginUser({required String email, required String password}) async {
    final result = await _authRepository.loginUser(email: email, password: password);
  }
}
