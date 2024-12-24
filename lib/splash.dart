import 'package:dicoding_project/theme.dart';
import 'package:flutter/material.dart';

import 'pages/landingpg/landingpage.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5)).then((value) => Navigator.push(
          // ignore: use_build_context_synchronously
          context,
          MaterialPageRoute(builder: (context) => const LandingPage()),
        ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[900],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Dibookingin Aja', style: semiboldwhitetext.copyWith(
                fontSize: 22,
              ),
            ),
            Text(
              'Welcome Back Traveller', style: mediumWhiteTextStyle.copyWith(
                fontSize: 18,
              ),
            ),
            Text(
              'By. Bagas Djunaedi || BDJ', style: regularwhitetext.copyWith(
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}