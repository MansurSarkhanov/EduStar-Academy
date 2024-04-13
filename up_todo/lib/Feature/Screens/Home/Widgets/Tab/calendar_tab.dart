import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CalendarTab extends StatelessWidget {
  const CalendarTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [SvgPicture.asset('assets/Images/home.svg')],
    );
  }
}
