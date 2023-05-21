import 'package:flutter/material.dart';

class KesanPesanPage extends StatelessWidget {
  const KesanPesanPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Kesan dan Pesan',
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kesan',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Kesan dalam perkuliahan TPM selama kurang lebih satu semester ini cukup menyenangkan, untuk Pak Bagus selaku dosen matkul ini terimakasih sudah membimbing kami untuk semester ini',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Pesan',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Adapun pesannya semoga untuk pembelajaran matkul ini semakin baik untuk kedepannya',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}