import 'package:dicoding_project/theme.dart';
import 'package:flutter/material.dart';

class LocationPlace extends StatelessWidget {
  const LocationPlace({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: 150,
        color: Colors.teal[300],
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Pada lokasi kamu saat ini tersedia tempat hotel dan villa',
                style: mediumBlackTextStyle.copyWith(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 14),
              Padding(
                padding: const EdgeInsets.only(left: 45, right: 45),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text('100',
                        style: semiboldBlackTextStyle.copyWith(
                          fontSize: 25,
                          color: Colors.blueGrey[800]
                        ),
                        ),
                        Text('Hotel',
                        style: regularPURPLETextStyle.copyWith(
                          fontSize: 16,
                          color: Colors.blueGrey[800]
                        ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text('100',
                        style: semiboldBlackTextStyle.copyWith(
                          fontSize: 25,
                          color: Colors.blueGrey[800]
                        ),
                        ),
                        Text('Villa',
                        style: regularPURPLETextStyle.copyWith(
                          fontSize: 16,
                          color: Colors.blueGrey[800]
                        ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}