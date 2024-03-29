import 'package:exapmle_app1/Product/Constants/app_theme.dart';
import 'package:flutter/material.dart';

import 'Feature/Screens/Home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme().darkTheme,
      home: const HomePage(),
    );
  }
}
