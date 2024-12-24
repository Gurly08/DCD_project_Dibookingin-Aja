import 'package:flutter/material.dart';

import '../theme.dart';

class SkipButton extends StatelessWidget {
  final VoidCallback onPressed;
  const SkipButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
      child: GestureDetector(
        onTap: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Skip',
              style: mediumWhiteTextStyle.copyWith(fontSize: 16)
            ),
            const Icon(Icons.chevron_right, color: Colors.white,),
          ],
        ),
      ),
    );
  }
}