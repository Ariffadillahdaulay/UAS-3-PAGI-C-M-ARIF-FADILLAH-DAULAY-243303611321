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
        'nama': 'Pak Anies Baswedan',
        'pesan': 'Bagaimana Perkembangan DPC Gerakan Rakyat Di Medan?',
        'bulan': 'Februari',
        'avatar': 'images/anies.jpg',
      },
      {
        'nama': 'Ketua Bahlil',
        'pesan': 'Kita Butuh Tempat Baru Nih.',
        'bulan': 'Februari',
        'avatar': 'images/bahlil.jpg',
      },
      {
        'nama': 'Bang Gibran',
        'pesan': 'Ada Rencana Maju Nanti?',
        'bulan': 'Januari',
        'avatar': 'images/gibran.jpg',
      },
      {
        'nama': 'Cak Imin',
        'pesan': 'Udah Terkirim Ya Bantuannya.',
        'bulan': 'Januari',
        'avatar': 'images/imin.jpg',
      },
      {
        'nama': 'Pak Jokowi',
        'pesan': 'Mau Masuk PSI Ga?',
        'bulan': 'Januari',
        'avatar': 'images/jokowi.jpg',
      },
      {
        'nama': 'Pak Pigai',
        'pesan': 'Bagaimana Perkembangan HAM Di Medan?',
        'bulan': 'Januari',
        'avatar': 'images/pigai.jpg',
      },
      {
        'nama': 'RI 1',
        'pesan': 'Bantu Bantu Dlu Untuk Aceh Ya Arif.',
        'bulan': 'Januari',
        'avatar': 'images/prabowo.jpg',
      },
      {
        'nama': 'Pak Kapolri',
        'pesan': 'Keamanan Tetap Harus Di Jalankan Di Medan Ya!',
        'bulan': 'Januari',
        'avatar': 'images/sigit.jpg',
      },
      {
        'nama': 'Bg Varell',
        'pesan': 'Bantu bantu ya.',
        'bulan': 'September',
        'avatar': 'images/varel.jpg',
      },
      {
        'nama': 'Bang Sahroni',
        'pesan': 'Semangat yaa.',
        'bulan': 'Oktober',
        'avatar': 'images/sahroni.jpg',
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
