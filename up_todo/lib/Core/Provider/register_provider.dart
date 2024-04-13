import 'package:flutter/material.dart';
import 'package:up_todo/Domain/Repository/impl_auth_repository.dart';

import '../../Feature/Screens/Home/home_page.dart';

class RegisterProvider extends ChangeNotifier {
  final _authRepository = ImplAuthRepository();
  Future<void> registerUser(context, {required String email, required String password}) async {
    final result = await _authRepository.registerUser(email: email, password: password);
    if (result!.isSuccess()) {
      final userCredential = result.tryGetSuccess();
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) {
          return const HomePage();
        },
      ));
    } else if (result.isError()) {
      final userError = result.tryGetError();
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(userError?.error?.errors?[0].message ?? "Error"),
          );
        },
      );
    }
  }
}
