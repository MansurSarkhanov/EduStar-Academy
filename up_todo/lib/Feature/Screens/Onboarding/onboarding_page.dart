import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:up_todo/Core/Provider/onboarding_provider.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> with OnboardingMixin {
  @override
  Widget build(BuildContext context) {
    print('Test');

    // final providerRead = context.read<OnboardingProvider>();
    // final providerWatch = context.watch<OnboardingProvider>();
    // return providerWatch.isLogin
    //     ? const HomePage()
    return Consumer(builder: (context, OnboardingProvider provider, child) {
      return Scaffold(
        floatingActionButton: ElevatedButton(
          onPressed: () {
            provider.nextPage(context);
          },
          child: Text((provider.currentPageIndex == 2) ? "Finish" : 'Next'),
        ),
        body: PageView(
          controller: provider.pageController,
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
    });
  }
}

mixin OnboardingMixin on State<OnboardingPage> {
  @override
  void initState() {
    super.initState();
    context.read<OnboardingProvider>().checkOnboaridng(context);
  }
}
