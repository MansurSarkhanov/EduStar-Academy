import 'package:flutter/material.dart';

import '202/routes.dart';
import '202/tabbar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: AppRoute().route,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Material App',
      home: const TabbarWidget(),
    );
  }
}

