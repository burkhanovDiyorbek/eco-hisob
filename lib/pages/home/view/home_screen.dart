import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            launchUrl(Uri.parse("https://t.me/ergashevTech"));
          },
          child: const Text("Go to Telegram"),
        ),
      ),
    );
  }
}
