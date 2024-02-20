import 'package:flutter/material.dart';

void customSheet(context, {required Widget child, required bool isColse, required bool isDrag}) {
  showModalBottomSheet(
    isDismissible: isColse,
    enableDrag: isDrag,
    context: context,
    builder: (context) {
      return child;
    },
  );
}
