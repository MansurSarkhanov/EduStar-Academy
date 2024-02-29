import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

final class SplashProvider extends ChangeNotifier {
  bool isSplash = false;
  Future<bool> checkUserLogin() async {
    await Future.delayed(const Duration(seconds: 3));
    final prefs = await SharedPreferences.getInstance();
    print(prefs.getBool('key'));
    isSplash = true;
    notifyListeners();
    return isSplash;
  }
}
