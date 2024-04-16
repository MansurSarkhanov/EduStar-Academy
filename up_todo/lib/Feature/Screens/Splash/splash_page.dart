import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:up_todo/Core/Provider/splash_provider.dart';
import 'package:up_todo/Feature/Screens/Home/home_page.dart';
import 'package:up_todo/Feature/Screens/Onboarding/onboarding_page.dart';

import '../../../Cache/cach_manager.dart';

class SpalashPage extends StatefulWidget {
  const SpalashPage({super.key});

  @override
  State<SpalashPage> createState() => _SpalashPageState();
}

class _SpalashPageState extends State<SpalashPage> {
  final cacheManger = CacheManager();

  Future<void> checkUser() async {
    final result = await context.read<SplashProvider>().checkUserLogin();
    print(result);
    if (!result) {
      final onboardResult = await cacheManger.readBool(key: 'logged');
      print(onboardResult);
      if (onboardResult) {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) {
            return const HomePage();
          },
        ));
        return;
      }

      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) {
          return const OnboardingPage();
        },
      ));
    }
  }

  @override
  void initState() {
    super.initState();
    checkUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SvgPicture.asset('assets/Images/logo.svg'),
      ),
    );
  }
}
