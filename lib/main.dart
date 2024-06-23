import 'package:flutter/material.dart';

Widget buatKotakDenganNama(Color warna, double ukuran, String nama) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        decoration: BoxDecoration(
          color: warna,
        ),
        height: ukuran,
        width: ukuran,
        margin: EdgeInsets.all(10),
      ),
      Text(nama, style: TextStyle(fontSize: 16)),
    ],
  );
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: KotakLayout(),
          ),
        ),
      ),
    );
  }
}

class KotakLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Data untuk kotak-kotak
    final List<Map<String, dynamic>> kotakData = [
      {'warna': Colors.greenAccent, 'ukuran': 100.0, 'nama': 'Zahwa'},
      {'warna': Colors.orangeAccent[400], 'ukuran': 70.0, 'nama': 'Alisha'},
      {'warna': Colors.greenAccent, 'ukuran': 50.0, 'nama': 'Abdul'},
      {'warna': Colors.orangeAccent[400], 'ukuran': 90.0, 'nama': 'Esther'},
      {'warna': Colors.red[300], 'ukuran': 110.0, 'nama': 'Yudha'},
      {'warna': Colors.blue[300], 'ukuran': 30.0, 'nama': 'Eli'},
    ];

    return Wrap(
      spacing: 10, // Jarak horizontal antar kotak
      runSpacing: 10, // Jarak vertikal antar baris
      children: kotakData.map((data) {
        // Menggunakan konversi tipe secara eksplisit
        final Color warna = data['warna'] as Color;
        final double ukuran = data['ukuran'] as double;
        final String nama = data['nama'] as String;
        return buatKotakDenganNama(warna, ukuran, nama);
      }).toList(),
    );
  }
}