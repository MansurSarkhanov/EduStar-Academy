import 'package:flutter/material.dart';

class NavigationBarWidget extends StatefulWidget {
  const NavigationBarWidget({super.key});

  @override
  State<NavigationBarWidget> createState() => _NavigationBarWidgetState();
}

class _NavigationBarWidgetState extends State<NavigationBarWidget> {
  int navbarIndex = 0;

  void changePage(int index) {
    navbarIndex = index;
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          onTap: null,
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.red,
            currentIndex: navbarIndex,
            items: [
          BottomNavigationBarItem(
            icon: InkWell(
              child: const Icon(Icons.person),
              onTap: () {
                changePage(0);
              },
            ),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              child: const Icon(Icons.home),
              onTap: () {
                changePage(1);
              },
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: InkWell(
              child: const Icon(Icons.search),
              onTap: () {
                changePage(2);
              },
            ),
            label: "Search",
          ),
        ]));
  }
}
