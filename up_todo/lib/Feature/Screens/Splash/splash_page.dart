import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:up_todo/Feature/Screens/Onboarding/onboarding_page.dart';

class SpalashPage extends StatefulWidget {
  const SpalashPage({super.key});

  @override
  State<SpalashPage> createState() => _SpalashPageState();
}

class _SpalashPageState extends State<SpalashPage> {
  bool isSplash = false;
  Future<bool> checkUserLogin() async {
    await Future.delayed(const Duration(seconds: 3));
    final prefs = await SharedPreferences.getInstance();
    print(prefs.getBool('key'));
    isSplash = true;
    setState(() {});

    return isSplash;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: FutureBuilder(
          future: checkUserLogin(),
          builder: (context, snapshot) {
            if (snapshot.data ?? false) {
              return const OnboardingPage();
            }
            return Center(
              child: SvgPicture.asset('assets/Images/logo.svg'),
            );
          }),
    );
  }
}
