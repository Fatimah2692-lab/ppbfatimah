import 'package:flutter/material.dart';
import 'package:flutter_1/detail_page.dart';
import 'package:flutter_1/halaman_3.dart';

class HomePage extends StatelessWidget {
  final String nama = "Fatimah Az Zahra";
  final String umur = "16";
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>
                  DetailPage(nama: nama, umur: umur)),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey
              ),
               child: Text('Pergi ke halaman 2', style: TextStyle(color: Colors.white),),
            ),
            SizedBox(height: 10),
            ElevatedButton(onPressed: () {
              Navigator.push(context, 
                MaterialPageRoute(builder:
                  (context) =>Halaman3()
                ),
              );
            },
             style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey
              ),
               child: Text('Pergi ke halaman 3', style: TextStyle(color: Colors.white),),
          ),
          ],
        ),
      ),
    );
  }
}