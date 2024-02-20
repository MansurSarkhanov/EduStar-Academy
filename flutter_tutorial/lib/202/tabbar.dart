import 'dart:io';

import 'package:flutter/material.dart';

class TabbarWidget extends StatefulWidget {
  const TabbarWidget({super.key});

  @override
  State<TabbarWidget> createState() => _TabbarWidgetState();
}

class _TabbarWidgetState extends State<TabbarWidget> with TickerProviderStateMixin {
  late final TabController controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Platform.isAndroid
          ? TabBar(controller: controller, tabs: [
              const Tab(
                text: "Call",
                icon: Icon(Icons.call),
              ),
              if (Platform.isIOS) ...[
                const Tab(
                  text: "Home",
                  icon: Icon(Icons.home),
                ),
              ],
              const Tab(
                text: "Chats",
                icon: Icon(Icons.chat),
              ),
              const Tab(
                text: "Settings",
                icon: Icon(Icons.settings),
              )
            ])
          : null,
      appBar: AppBar(
        title: const Text("Whatsapp"),
        bottom: Platform.isAndroid
            ? TabBar(dividerColor: Colors.green, indicatorColor: Colors.red, controller: controller, tabs: const [
                Tab(
                  text: "Call",
                  icon: Icon(Icons.call_outlined),
                ),
                Tab(
                  text: "Chats",
                  icon: Icon(Icons.chat),
                ),
                Tab(
                  text: "Settings",
                  icon: Icon(Icons.settings_outlined),
                )
              ])
            : null,
      ),
      body: TabBarView(physics: const NeverScrollableScrollPhysics(), controller: controller, children: [
        Container(
          child: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Calls'), Divider()],
            ),
          ),
        ),
        Container(
          child: const Center(
            child: Text('Chats'),
          ),
        ),
        Container(
          child: const Center(
            child: Text('Settings'),
          ),
        )
      ]),
    );
  }
}
