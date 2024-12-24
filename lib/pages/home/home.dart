import 'package:dicoding_project/pages/home/widgets/location_place.dart';
import 'package:flutter/material.dart';

import 'widgets/appbar.dart';
import 'widgets/listdestinasi.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan[900],
        appBar: const AppBarCustom(
          title: 'Hi, Traveler',
          subtitle: 'Siap Untuk Menjelajah Dunia',
          assetImagePath: 'assets/images/profil_aku.jpeg',
        ),
        body: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LocationPlace(),
              const SizedBox(height: 28),
              // Tambahkan Expanded untuk ListDestinasi
              Expanded(
                child: ListDestinasi(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
