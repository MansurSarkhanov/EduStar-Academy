import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:up_todo/Core/Provider/login_provider.dart';
import 'package:up_todo/Feature/Screens/Register/register_page.dart';
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
                isShowIcon: false,
              ),
              sizedBoxH(50),
              Consumer<LoginProvider>(builder: (context, provider, child) {
                return AuthButton(
                    text: "Login",
                    onTap: () {
                      provider.loginUser(context, email: _emailController.text, password: _passwordController.text);
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
              sizedBoxH(50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(children: [
                        TextSpan(text: "Don't have an account? ", style: TextStyle(color: Colors.grey.shade400)),
                        TextSpan(
                            text: "Register",
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) {
                                      return RegisterPage();
                                    },
                                  )))
                      ])),
                ],
              )
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
