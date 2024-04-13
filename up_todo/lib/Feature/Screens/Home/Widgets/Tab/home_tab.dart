import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:up_todo/Core/Constants/strings.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/Images/home.svg'),
          const Text(
            AppStrings.homeEmptyTask,
            style: TextStyle(color: Colors.white),
          ),
          const Text(
            AppStrings.homeEmptyTaskDes,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
