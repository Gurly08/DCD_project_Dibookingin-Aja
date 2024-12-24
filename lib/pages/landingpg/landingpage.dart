import 'package:dicoding_project/pages/landingpg/landing_content.dart';
import 'package:dicoding_project/pages/landingpg/landing_indicator.dart';
import 'package:dicoding_project/pages/routes/route_context.dart';
import 'package:flutter/material.dart';

import '../../widgets/buttons.dart';
import '../../widgets/skip_button.dart';
import '../home/home.dart';
import 'models/landing_models.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {

  int currentPage = 0;
  final pageController = PageController();

  final landingpageData = [
    LandingModel(
      image: 'assets/images/ob1-lp.png',
      text: 'Menjadi teman travel kamu dan bisa dibawa kemanapun',
    ),
    LandingModel(
      image: 'assets/images/ob2-lp.png',
      text: 'Platfrom yang membuat kamu bisa menemukan penginapan terdekat dari lokasi kamu',
    ),
    LandingModel(
      image: 'assets/images/ob3-lp.png',
      text: 'Satu Aplikasi memudahkan perjalanan jelajah kamu ke seluruh negara',
    ),
  ];

  void navigate() {
  context.pushReplacement(const Home());
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[900],
      body: Column(
            children: [
            SkipButton(onPressed: navigate),
            LandingContent(
              pageController: pageController,
              onPagechanged: (index) {
                currentPage = index;
                setState(() {});
              },
              contents: landingpageData,
            ),
            LandingIndicator(
              length: landingpageData.length,
              currentPage: currentPage,
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Button.filled(
                onPressed: (){
                  if (currentPage < landingpageData.length -1) {
                    pageController.nextPage(
                      duration: const Duration(milliseconds: 500), 
                      curve: Curves.ease,
                    );
                    currentPage++;
                    setState(() {});
                  } else {
                    navigate();
                  }
                },
                label: 'Mulai',
              ),
            )
        ],
      ),
    );
  }
}