import 'package:flutter/material.dart';

import '202/navigation.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      '/home': (context) => const NavigationView(),
      "/screen2": (context) => const Screen2(
            coffename: "coppicino",
            image: "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
            cost: "90",
          ),
    }, debugShowCheckedModeBanner: false, theme: ThemeData.dark(), title: 'Material App', home: const NavigationView());
  }
}
