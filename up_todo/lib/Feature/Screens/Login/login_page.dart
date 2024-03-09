import 'package:flutter/material.dart';
import 'package:up_todo/Feature/Widgets/Buttons/auth_button.dart';
import 'package:up_todo/Feature/Widgets/Inputs/custom_field.dart';
import 'package:up_todo/Feature/Widgets/or_divider.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 24.0, right: 24),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Login",
                style: TextStyle(color: Colors.white, fontSize: 32),
              ),
              sizedBoxH(50),
              const Text(
                "Email Address",
                style: TextStyle(color: Colors.white),
              ),
              CustomField(hintText: 'Enter Email', controller: _emailController),
              sizedBoxH(24),
              const Text(
                "Password",
                style: TextStyle(color: Colors.white),
              ),
              CustomField(
                hintText: 'Enter Password',
                controller: _passwordController,
                isShowIcon: true,
              ),
              sizedBoxH(50),
              AuthButton(text: "Login", onTap: () {}),
              sizedBoxH(50),
              const OrDivider(),
              sizedBoxH(50),
              AuthButton(
                text: "Login",
                onTap: () {},
                isGoogle: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

SizedBox sizedBoxH(double height) {
  return SizedBox(
    height: height,
  );
}
