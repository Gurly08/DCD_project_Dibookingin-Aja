import 'package:dicoding_project/pages/landingpg/models/landing_models.dart';
import 'package:flutter/material.dart';

import '../../theme.dart';

class LandingContent extends StatelessWidget {
  final PageController pageController;
  final void Function(int index) onPagechanged;
  final List<LandingModel> contents;
  const LandingContent({
    super.key,
    required this.pageController,
    required this.onPagechanged,
    required this.contents,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: pageController,
        onPageChanged: onPagechanged,
        itemCount: contents.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Image.asset(
                    contents[index].image,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  contents[index].text,
                  style: semiboldwhitetext.copyWith(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
