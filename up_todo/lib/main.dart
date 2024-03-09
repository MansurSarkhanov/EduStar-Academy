import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:up_todo/Feature/Screens/Login/login_page.dart';

import 'Core/Provider/home_provider.dart';
import 'Core/Provider/onboarding_provider.dart';
import 'Core/Provider/splash_provider.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => SplashProvider()..checkUserLogin(),
    ),
    ChangeNotifierProvider(
      create: (context) => OnboardingProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => HomeProvider(),
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
          scaffoldBackgroundColor: Colors.black,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
          textTheme: GoogleFonts.ubuntuTextTheme()
        
      ),
      home: LoginPage(),
    );
  }
}
