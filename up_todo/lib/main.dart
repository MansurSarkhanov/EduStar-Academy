import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:up_todo/Core/Constants/colors.dart';
import 'package:up_todo/Core/Provider/login_provider.dart';
import 'package:up_todo/Core/Provider/register_provider.dart';
import 'package:up_todo/Feature/Screens/Splash/splash_page.dart';

import 'Cache/cach_manager.dart';
import 'Core/Provider/home_provider.dart';
import 'Core/Provider/onboarding_provider.dart';
import 'Core/Provider/splash_provider.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cacheManger = CacheManager();
  cacheManger.saveBool(key: 'logged', value: false);

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => SplashProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => OnboardingProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => RegisterProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => HomeProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => LoginProvider(),
    )
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: AppColors.bgColor,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          textTheme: GoogleFonts.ubuntuTextTheme()),
      home: const SpalashPage(),
    );
  }
}
