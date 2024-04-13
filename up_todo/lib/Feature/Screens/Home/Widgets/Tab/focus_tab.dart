import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FocusTab extends StatelessWidget {
  const FocusTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [SvgPicture.asset('assets/Images/home.svg')],
    );
  }
}
