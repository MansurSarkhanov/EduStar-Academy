import 'package:flutter/material.dart';

final class SplashProvider extends ChangeNotifier {
  bool isSplash = true;
  Future<bool> checkUserLogin() async {
    await Future.delayed(const Duration(seconds: 3));
  
    isSplash = false;
    notifyListeners();
    return isSplash;
  }
}
