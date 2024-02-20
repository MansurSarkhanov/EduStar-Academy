import 'package:flutter/material.dart';

import 'navigation.dart';

class AppRoute {
  Map<String, Widget Function(BuildContext)> route = {
    '/home': (context) => const NavigationView(),
    "/screen2": (context) => const Screen2(
          coffename: "coppicino",
          image: "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
          cost: "90",
        ),
    "/screen3": (context) => const Screen3()
  };
}
