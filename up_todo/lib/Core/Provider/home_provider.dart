import 'package:flutter/material.dart';
import 'package:up_todo/Core/Models/user_firestore_model.dart';

import '../../Domain/Repository/impl_home_repository.dart';

class HomeProvider extends ChangeNotifier {
  final _homeRepository = ImplHomeRepository();
  UserFirestoreModel currentUserModel = UserFirestoreModel();

  Future<void> fetcUserInfo(context) async {
    final result = await _homeRepository.getUserInformation();
    if (result!.isSuccess()) {
      final user = result.tryGetSuccess()!;
      currentUserModel = user;
      notifyListeners();
    } else if (result.isError()) {
      final userError = result.tryGetError();
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(userError?.message ?? 'Invalid User'),
          );
        },
      );
    }
  }
}
