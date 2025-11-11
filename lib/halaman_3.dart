import 'package:flutter/material.dart';

class Halaman3 extends StatelessWidget {
  const Halaman3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman 3'),
      ),
      body: Center(
        child: ElevatedButton(onPressed: () {
          Navigator.pop(context);
        },
        child: Text('Kembali ke halaman sebelumnya')),
      ),
    );
  }
}