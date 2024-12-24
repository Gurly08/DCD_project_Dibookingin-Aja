import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Import intl package untuk format Rupiah

import '../place_models.dart';
import '../placedetail.dart';

class ListDestinasi extends StatelessWidget {
  final List<Place> places = [
    Place(
      name: "Hotel Blue Sky",
      address: "123 Main Street, City A",
      price: 100000.0,
      distance: "4km",
      images: [
        'assets/images/a1.png',
        'assets/images/a2.png',
        'assets/images/a3.png',
      ],
    ),
    Place(
      name: "Mountain Retreat",
      address: "456 Mountain Road, City B",
      price: 150000.0,
      distance: "10km",
      images: [
        'assets/images/b1.png',
        'assets/images/b2.png',
        'assets/images/b3.png',
      ],
    ),
    Place(
      name: "Beachside Resort",
      address: "789 Beach Avenue, City C",
      price: 200000.0,
      distance: "2km",
      images: [
        'assets/images/c1.png',
        'assets/images/c2.png',
        'assets/images/c3.png',
      ],
    ),
  ];

  ListDestinasi({super.key});

  void navigateToDetail(BuildContext context, Place place) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PlaceDetail(place: place),
      ),
    );
  }

  // Fungsi untuk memformat harga ke Rupiah
  String formatRupiah(double price) {
    final formatter = NumberFormat.currency(
      locale: 'id_ID', // Format Indonesia
      symbol: 'Rp.', // Simbol Rupiah
      decimalDigits: 0, // Tanpa desimal
    );
    return formatter.format(price);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: places.length,
      itemBuilder: (context, index) {
        final place = places[index];
        return GestureDetector(
          onTap: () => navigateToDetail(context, place),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  place.name,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(place.address),
                const SizedBox(height: 4),
                Text('Harga: ${formatRupiah(place.price)}'),
                const SizedBox(height: 4),
                Text('Jarak: ${place.distance}'),
              ],
            ),
          ),
        );
      },
    );
  }
}
