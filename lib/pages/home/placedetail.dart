import 'package:flutter/material.dart';
import 'place_models.dart';
import 'package:intl/intl.dart'; // Import intl untuk format Rupiah

class PlaceDetail extends StatelessWidget {
  final Place place;

  const PlaceDetail({Key? key, required this.place}) : super(key: key);

  // Fungsi untuk memformat harga ke Rupiah
  String formatRupiah(double price) {
    final formatter = NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp.',
      decimalDigits: 0,
    );
    return formatter.format(price);
  }

  // Fungsi untuk menampilkan alert dialog
  void showBookingDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Konfirmasi Booking"),
          content: const Text("Apa ingin Dibookingin Penginapan ini?"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Tutup dialog
              },
              child: const Text("No"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Tutup dialog
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Penginapan berhasil dibooking!"),
                  ),
                );
              },
              child: const Text("Yes"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.name),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Gambar destinasi dengan PageView
              SizedBox(
                height: 200, // Tinggi gambar
                child: PageView.builder(
                  itemCount: place.images.length,
                  itemBuilder: (context, index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        place.images[index], // Path gambar dari daftar
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 16),

              // Nama destinasi
              Text(
                place.name,
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),

              // Alamat
              Text(
                place.address,
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 8),

              // Harga dalam format Rupiah
              Text(
                'Harga: ${formatRupiah(place.price)}',
                style: const TextStyle(fontSize: 16, color: Colors.green, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),

              // Jarak
              Text(
                'Jarak: ${place.distance}',
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),

              // Deskripsi destinasi
              const Text(
                'Deskripsi',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                'Destinasi ini adalah salah satu pilihan terbaik untuk Anda yang ingin menikmati suasana yang nyaman dan pemandangan yang indah. Dilengkapi dengan fasilitas lengkap dan akses mudah ke berbagai tempat wisata.',
                style: const TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () => showBookingDialog(context),
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 16),
            backgroundColor: Colors.amber, // Warna tombol
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: const Text(
            "Booking",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
