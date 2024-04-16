import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({super.key, required this.text, required this.onTap, this.isGoogle = false});
  final String text;
  final VoidCallback onTap;
  final bool? isGoogle;
  @override
  Widget build(BuildContext context) {
    return (isGoogle ?? false)
        ? InkWell(
            onTap: onTap,
            child: Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 14.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.facebook,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Text(
                      text,
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    )
                  ],
                ),
              ),
            ),
          )
        : ElevatedButton(
            onPressed: onTap,
            style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.red;
              }
              return Colors.purple;
            })),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 14.0),
                child: Text(
                  text,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          );
  }
}
