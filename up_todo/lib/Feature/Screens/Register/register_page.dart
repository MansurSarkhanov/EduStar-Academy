import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:up_todo/Core/Provider/register_provider.dart';
import 'package:up_todo/Feature/Widgets/Buttons/auth_button.dart';
import 'package:up_todo/Feature/Widgets/Inputs/custom_field.dart';
import 'package:up_todo/Feature/Widgets/or_divider.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 24.0, right: 24),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // if (WidgetsBinding.instance.window.viewInsets.bottom > 0.0) ...[
                  //   const SizedBox(
                  //     height: 150,
                  //   )
                  // ],
                  const Text(
                    "Register",
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
                    isShowIcon: false,
                  ),
                  sizedBoxH(24),
                  const Text(
                    "Confirm Password",
                    style: TextStyle(color: Colors.white),
                  ),
                  CustomField(
                    hintText: 'Enter Password',
                    controller: _passwordController,
                    isShowIcon: false,
                  ),
                  sizedBoxH(50),
                  Consumer<RegisterProvider>(builder: (context, provider, child) {
                    return AuthButton(
                        text: "Register",
                        onTap: () {
                          provider.registerUser(context,
                              email: _emailController.text, password: _passwordController.text);
                        });
                  }),
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
