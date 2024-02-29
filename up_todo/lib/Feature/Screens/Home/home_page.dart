import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:up_todo/Core/Provider/home_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          child: const Text('Home Page'),
          onTap: () {
            context.read<HomeProvider>().signUp();
          },
        ),
      ),
    );
  }
}
