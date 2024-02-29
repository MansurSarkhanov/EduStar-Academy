import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:up_todo/Feature/Screens/Onboarding/onboarding_page.dart';

import '../../../Core/Provider/splash_provider.dart';

class SpalashPage extends StatefulWidget {
  const SpalashPage({super.key});

  @override
  State<SpalashPage> createState() => _SpalashPageState();
}

class _SpalashPageState extends State<SpalashPage> {

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        body: !context.watch<SplashProvider>().isSplash
            ? Center(
              child: SvgPicture.asset('assets/Images/logo.svg'),
              )
            : const OnboardingPage()
    );
  }
}
