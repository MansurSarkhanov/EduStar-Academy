import 'package:flutter/material.dart';

class PageViewWidget extends StatefulWidget {
  const PageViewWidget({super.key});

  @override
  State<PageViewWidget> createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          onTap: null,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.red,
          items: [
            BottomNavigationBarItem(
              icon: InkWell(
                child: const Icon(Icons.person),
                onTap: () {
                  _controller.jumpToPage(0);
                },
              ),
              label: "Profile",
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                child: const Icon(Icons.home),
                onTap: () {
                  _controller.jumpToPage(1);

                },
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: InkWell(
                child: const Icon(Icons.search),
                onTap: () {
                  _controller.animateToPage(
                    2,duration: const Duration(seconds: 1),curve: Curves.linear);

                },
              ),
              label: "Search",
            ),
          ]),
      body: PageView(controller: _controller, scrollDirection: Axis.horizontal, children: [
        Container(
          color: Colors.green,
        ),
        Container(
          color: Colors.blue,
        ),
        Container(
          color: Colors.red,
        )
      ]),
    );
  }
}
