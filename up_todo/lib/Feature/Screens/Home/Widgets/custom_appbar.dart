import 'package:flutter/material.dart';

import '../../../../Core/Constants/strings.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 24),
          height: 42,
          width: 42,
          decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
        )
      ],
      backgroundColor: Colors.transparent,
      leading: const Icon(
        Icons.menu,
        color: Colors.white,
      ),
      centerTitle: true,
      title: const Text(
        AppStrings.index,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(54);
}
