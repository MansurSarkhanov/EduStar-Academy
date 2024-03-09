import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: Divider()),
        Text(
          'or',
          style: TextStyle(color: Colors.white),
        ),
        Expanded(child: Divider())
      ],
    );
  }
}
