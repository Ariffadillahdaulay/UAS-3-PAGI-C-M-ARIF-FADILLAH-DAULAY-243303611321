import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_application_1/main.dart';

void main() {
  testWidgets('Chat Item app loads correctly', (WidgetTester tester) async {
    // Bungkus MyApp dengan MaterialApp test environment
    await tester.pumpWidget(
      const MaterialApp(
        home: MyApp(),
      ),
    );

    // Biarkan semua widget selesai build
    await tester.pumpAndSettle();

    // AppBar title
    expect(find.text('Chat Item'), findsOneWidget);

    // Nama user (muncul berkali-kali)
    expect(find.text('Josua Tarigan'), findsWidgets);

    // Status
    expect(find.text('Okee'), findsWidgets);

    // Salah satu bulan
    expect(find.text('Januari'), findsOneWidget);
  });
}