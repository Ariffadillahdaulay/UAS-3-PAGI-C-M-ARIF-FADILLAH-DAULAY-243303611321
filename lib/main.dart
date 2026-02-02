import 'package:flutter/material.dart';
import 'chat_item.dart';
import 'detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 10 Daftar Nama, Pesan, dan link Icon/Avatar
    final List<Map<String, String>> chats = [
      {
        'nama': 'Satoshi Nakamoto',
        'pesan': 'Sudah baca whitepaper Bitcoin terbaru?',
        'bulan': 'Januari',
        'avatar': 'images/anies.jpg',
      },
      {
        'nama': 'Budi Setiawan',
        'pesan': 'Jangan lupa meeting jam 10 pagi ini ya.',
        'bulan': 'Februari',
        'avatar': 'images/bahlil.jpg',
      },
      {
        'nama': 'Siti Rahma',
        'pesan': 'Laporan UAS sudah saya kirim ke email.',
        'bulan': 'Maret',
        'avatar': 'images/gibran.jpg',
      },
      {
        'nama': 'Tech Support',
        'pesan': 'Tiket bantuan Anda #4021 telah selesai.',
        'bulan': 'April',
        'avatar': 'images/gibran.jpg',
      },
      {
        'nama': 'Andi Wijaya',
        'pesan': 'Nanti malam mabar Mobile Legends?',
        'bulan': 'Mei',
        'avatar': 'images/gibran.jpg',
      },
      {
        'nama': 'Jessica Parker',
        'pesan': 'Project Flutter kita masuk tahap testing.',
        'bulan': 'Juni',
        'avatar': 'images/gibran.jpg',
      },
      {
        'nama': 'Kopi Senja',
        'pesan': 'Promo beli 1 gratis 1 khusus hari ini!',
        'bulan': 'Juli',
        'avatar': 'images/gibran.jpg',
      },
      {
        'nama': 'Dinda Kirana',
        'pesan': 'Pesen martabak atau pizza ya buat nanti?',
        'bulan': 'Agustus',
        'avatar': 'images/gibran.jpg',
      },
      {
        'nama': 'Admin Cloud',
        'pesan': 'Server maintenance akan dimulai pukul 00.00.',
        'bulan': 'September',
        'avatar': 'images/gibran.jpg',
      },
      {
        'nama': 'Zuckerberg Clone',
        'pesan': 'Metaverse sedang dalam pengembangan.',
        'bulan': 'Oktober',
        'avatar': 'images/gibran.jpg',
      },
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Chat Item'),
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
        ),
        body: ListView.separated(
          itemCount: chats.length,
          // PERBAIKAN: Menambahkan parameter (context, index) agar tidak error
          separatorBuilder: (context, index) =>
              const Divider(height: 1, indent: 70),
          itemBuilder: (context, index) {
            final chat = chats[index];

            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DetailPage(
                      nama: chat['nama']!,
                      pesan: chat['pesan']!,
                    ),
                  ),
                );
              },
              child: ChatItem(
                nama: chat['nama']!,
                pesan: chat['pesan']!,
                bulan: chat['bulan']!,
                // KIRIM STRING NYA SAJA
                avatar: chat['avatar']!,
              ),
            );
          },
        ),
      ),
    );
  }
}
