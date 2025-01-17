import 'package:flutter/material.dart';


class LandingIndicator extends StatelessWidget {
  final int length;
  final int currentPage;

  const LandingIndicator({
    required this.length,
    required this.currentPage,  
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        length,
        (index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            height: 10,
            width: currentPage == index ? 20 : 10,
            decoration: BoxDecoration(
              color: currentPage == index ? Colors.white : Colors.white54,
              borderRadius: BorderRadius.circular(5),
            ),
          );
        },
      ),
    );
  }
}
