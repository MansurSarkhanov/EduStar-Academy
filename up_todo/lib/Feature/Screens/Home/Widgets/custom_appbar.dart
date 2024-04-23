import 'package:flutter/material.dart';
import 'package:up_todo/Core/Models/user_firestore_model.dart';

import '../../../../Core/Constants/strings.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.userModel,
  });
  final UserFirestoreModel userModel;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 24),
          height: 42,
          width: 42,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(userModel.image ?? "https://cdn-icons-png.flaticon.com/512/149/149071.png"))),
        )
      ],
      backgroundColor: Colors.transparent,
      leading: const Icon(
        Icons.menu,
        color: Colors.white,
      ),
      centerTitle: true,
      title: Text(
        userModel.username ?? AppStrings.index,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(54);
}
