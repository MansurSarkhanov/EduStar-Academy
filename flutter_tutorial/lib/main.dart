import 'package:flutter/material.dart';
import 'package:flutter_tutorial/202/Api/provider/dio_provider.dart';
import 'package:provider/provider.dart';

import '202/Api/view.dart';
import '202/routes.dart';

void main() {
  runApp(MultiProvider(providers: [
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
      routes: AppRoute().route,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Material App',
      home: const HomeView(),
    );
  }
}
