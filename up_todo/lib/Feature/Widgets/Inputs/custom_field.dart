import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  const CustomField({super.key, required this.hintText, required this.controller, this.isShowIcon = false});
  final String hintText;
  final TextEditingController controller;
  final bool? isShowIcon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.white),
      controller: controller,
      obscureText: isShowIcon ?? false,
      decoration: InputDecoration(
      
          focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
          enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
          hintText: hintText,
        
          hintStyle: const TextStyle(color: Colors.grey),
          suffixIcon: (isShowIcon ?? false) ? const Icon(Icons.visibility) : const SizedBox.shrink()),
    );
  }
}
