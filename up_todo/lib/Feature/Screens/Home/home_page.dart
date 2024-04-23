import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:up_todo/Core/Provider/home_provider.dart';
import 'package:up_todo/Feature/Screens/Home/Widgets/Tab/calendar_tab.dart';
import 'package:up_todo/Feature/Screens/Home/Widgets/Tab/focus_tab.dart';
import 'package:up_todo/Feature/Screens/Home/Widgets/Tab/profile_tab.dart';

import '../../../Core/Constants/colors.dart';
import 'Widgets/Tab/home_tab.dart';
import 'Widgets/custom_appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this);
    context.read<HomeProvider>().fetcUserInfo(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: InkWell(
        child: Container(
            decoration: const BoxDecoration(color: AppColors.buttonColor, shape: BoxShape.circle),
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Icon(
                Icons.add,
                size: 32,
                color: Colors.white,
              ),
            )),
      ),
      appBar: CustomAppBar(
        userModel: context.watch<HomeProvider>().currentUserModel,
      ),
      body: TabBarView(
        controller: controller,
        children: const [HomeTab(), CalendarTab(), FocusTab(), ProfileTab()],
      ),
      bottomNavigationBar: BottomAppBar(
          color: AppColors.navbarColor,
          child: TabBar(
              onTap: (value) {
                print(value);
              },
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white,
              dividerColor: Colors.transparent,
              indicatorColor: Colors.transparent,
              controller: controller,
              tabs: [
                _navBarTab(path: "home-2", text: "Index"),
                _navBarTab(path: "calendar", text: "Calendar"),
                _navBarTab(path: "clock", text: "Focus"),
                _navBarTab(path: "user", text: "Profile"),
              ])),
    );
  }

  Tab _navBarTab({required String path, required String text}) {
    return Tab(
      text: text,
      icon: SvgPicture.asset('assets/Icons/$path.svg'),
    );
  }
}
