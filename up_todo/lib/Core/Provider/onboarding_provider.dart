import 'package:flutter/material.dart';
import 'package:up_todo/Feature/Screens/Login/login_page.dart';

import '../../Cache/cach_manager.dart';

final class OnboardingProvider extends ChangeNotifier {
  final PageController pageController = PageController();
  final cacheManger = CacheManager();
  bool isLogin = false;
  int currentPageIndex = 0;

  Future<void> checkOnboaridng(context) async {
    isLogin = await cacheManger.readBool(key: 'key');
    if (isLogin) {
      Navigator.of(context).pushReplacementNamed('/home');
    }
    notifyListeners();
  }

  void nextPage(context) {
    currentPageIndex++;
    if (currentPageIndex == 3) {
      print(currentPageIndex);
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) {
          return LoginPage();
        },
      ));
    }

    pageController.nextPage(duration: const Duration(milliseconds: 200), curve: Curves.bounceOut);
    notifyListeners();
  }

  void previesPage() {
    if (currentPageIndex >= 0) {
      currentPageIndex--;
    }
  }
}
