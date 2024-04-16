import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

Future<void> urlLauncher(String url) async {
  if (await launchUrl(Uri.parse('https://nikunjthesiya.vercel.app/#buy-me-coffee'))) {}
}
