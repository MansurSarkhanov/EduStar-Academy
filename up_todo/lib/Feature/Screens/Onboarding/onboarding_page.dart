import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:up_todo/Feature/Screens/Home/home_page.dart';

import '../../../Core/Cache/cach_manager.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final cacheManger = CacheManager();
  final PageController pageController = PageController();
  bool isLogin = false;

  @override
  void initState() {
    super.initState();
    checkOnboaridng();
  }

  Future<bool?> checkOnboaridng() async {
    isLogin = await cacheManger.readBool(key: 'key');
    setState(() {});
    return isLogin;
  }

  int currentPageIndex = 0;
  void nextPage() {
    currentPageIndex++;
    if (currentPageIndex == 3) {
      print(currentPageIndex);
      cacheManger.saveBool(key: 'key', value: true);
      return;
    }
    pageController.nextPage(duration: const Duration(milliseconds: 200), curve: Curves.bounceOut);

    setState(() {});
  }

  void previesPage() {
    if (currentPageIndex >= 0) {
      currentPageIndex--;
    }
  }

  @override
  Widget build(BuildContext context) {
    return isLogin
        ? const HomePage()
        : Scaffold(
            floatingActionButton: ElevatedButton(
              onPressed: () {
                nextPage();
              },
              child: Text((currentPageIndex == 2) ? "Finish" : 'Next'),
            ),
            body: PageView(
              controller: pageController,
              children: [
                Container(
                  color: Colors.black,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/Images/onboarding1.svg'),
                        const Text(
                          'Manage your tasks',
                          style: TextStyle(color: Colors.white, fontSize: 32),
                        ),
                        const Text(
                          'You can easily manage all of your daily tasks in DoMe for free',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.black,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/Images/onboarding2.svg'),
                        const Text(
                          'Manage your tasks',
                          style: TextStyle(color: Colors.white, fontSize: 32),
                        ),
                        const Text(
                          'You can easily manage all of your daily tasks in DoMe for free',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.black,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/Images/onboarding3.svg'),
                        const Text(
                          'Manage your tasks',
                          style: TextStyle(color: Colors.white, fontSize: 32),
                        ),
                        const Text(
                          'You can easily manage all of your daily tasks in DoMe for free',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
