import 'package:flutter/material.dart';
import 'package:flutter_1/halaman_3.dart';

class DetailPage extends StatelessWidget {
  final String nama;
  final String umur;
  const DetailPage({super.key, required this.nama, required this.umur});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Selamat datang $nama'),
            SizedBox(height: 10),
            Text('Umur saya $umur'),
            SizedBox(height: 10),
            ElevatedButton(onPressed: () {
              Navigator.pop(context);},
             child:Text('Kembali ke halaman sebelumnya'),
            ),
            SizedBox(height: 10),
            ElevatedButton(onPressed: () {
              Navigator.push(context, 
                MaterialPageRoute(builder:
                  (context) => Halaman3()
                ),
              );
            }, child: Text('Pergi ke halaman 3'),
          ),
          ],
        ),
      ),
    );
  }
}