import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  Future<void> signUp() async {
    final authService = FirebaseAuth.instance;
    final user = await authService.createUserWithEmailAndPassword(email: 'Sadiq@gmail.com', password: 'sadiq123');
  }
}
