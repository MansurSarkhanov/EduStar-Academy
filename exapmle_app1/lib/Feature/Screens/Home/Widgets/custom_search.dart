import 'package:flutter/material.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
      child: const Padding(
        padding: EdgeInsets.all(12.0),
        child: Icon(
          Icons.search,
          color: Colors.white,
        ),
      ),
    );
  }
}
