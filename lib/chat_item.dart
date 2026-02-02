import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  final String nama;
  final String pesan;
  final String bulan;
  final String avatar;

  const ChatItem({
    super.key,
    required this.nama,
    required this.pesan,
    required this.bulan,
    required this.avatar,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        // 1. Styling Background dan Border
        decoration: BoxDecoration(
          color: Colors.lightBlue[100], // Warna background biru muda
          border: Border.all(color: Colors.red, width: 2), // Border merah
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25), // Lengkungan kiri atas
            bottomRight: Radius.circular(25), // Lengkungan kanan bawah
          ),
        ),
        padding: const EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Bagian Avatar
            CircleAvatar(
              radius: 28,
              backgroundImage: avatar.startsWith('http')
                  ? NetworkImage(avatar) as ImageProvider
                  : AssetImage(avatar) as ImageProvider,
            ),

            const SizedBox(width: 15),

            // Bagian Teks
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        nama,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black87,
                        ),
                      ),
                      Text(
                        bulan,
                        style: TextStyle(
                          color: Colors.blue[400],
                          fontStyle: FontStyle
                              .italic, // Tulisan miring seperti di gambar
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  // Baris Pesan dengan Ikon Checklist
                  Row(
                    children: [
                      const Icon(Icons.check,
                          size: 16, color: Colors.black), // Ikon centang
                      const SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          pesan,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(color: Colors.black54),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
