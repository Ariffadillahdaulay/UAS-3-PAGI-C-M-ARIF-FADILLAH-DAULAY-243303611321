import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String nama;
  final String pesan;

  const DetailPage({
    super.key,
    required this.nama,
    required this.pesan,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nama),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: Text(
          'Halo $nama\n\nPesan:\n"$pesan"\n\n.',
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}