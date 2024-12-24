import 'package:dicoding_project/theme.dart';
import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  final String title; 
  final String subtitle; 
  final String? assetImagePath;

  const AppBarCustom({
    super.key,
    required this.title,
    required this.subtitle,
    this.assetImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      title: Padding(
        padding: const EdgeInsets.only(left: 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: mediumWhiteTextStyle.copyWith(
              fontSize: 15,
            ),),
            Text(subtitle, style: regularwhitetext.copyWith(
              fontSize: 10,
            ),),
          ],
        ),
      ),
      actions: [
        if (assetImagePath != null) // Tampilkan hanya jika path gambar tersedia
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: CircleAvatar(
              foregroundImage: AssetImage(assetImagePath!), // Gambar dari aset
            ),
          ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
