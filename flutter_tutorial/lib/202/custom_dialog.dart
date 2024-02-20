import 'package:flutter/material.dart';

void customDialog(context, {required Widget child, required bool isDiss}) {
  showDialog(
    barrierDismissible: isDiss,
    context: context,
    builder: (context) {
      return child;
    },
  );
}
