import 'package:exapmle_app1/Product/Constants/app_colors.dart';
import 'package:exapmle_app1/Product/Constants/app_strings.dart';
import 'package:flutter/material.dart';

import '../../../Product/Constants/app_paths.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          AppString.bankName,
          style: TextStyle(color: Colors.white),
        ),
        leading: Container(
          decoration: const BoxDecoration(shape: BoxShape.circle, color: AppColors.profileBgColor),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(AppPath.profile),
          ),
        ),
      ),
    );
  }
}
