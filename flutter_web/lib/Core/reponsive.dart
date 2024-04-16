import 'package:flutter/material.dart';

class Resonsive {
  bool isMobile(context) {
    if (MediaQuery.of(context).size.width > 0 && MediaQuery.of(context).size.width <= 450) {
      return true;
    } else {
      return false;
    }
  }
}
