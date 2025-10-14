import 'package:flutter/material.dart';

class LatihanRowncolum extends StatelessWidget {
  const LatihanRowncolum({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar : AppBar(
        title: const Text('PROFILE SAYA', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
       ),
       body: Column(
        children: [
          SizedBox(height: 50,),
           Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(500),
              child:Image.asset('image/loopy.jpg', width: 150,),
            )
           ),
           SizedBox(height: 18),
           Text("Fatimah Az Zahra", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
           SizedBox(height: 5),
           Text("Siswa SMK YPC", style: TextStyle(fontSize: 16)),
           SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(onPressed: () {},icon: Icon(Icons.call, color: Colors.white),
                label: Text('Call', style: TextStyle(
                  color: Colors.white)),
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.cyan)
                ),
              ),
              SizedBox(width: 35),
              ElevatedButton.icon(onPressed: () {},icon: Icon(Icons.map, color: Colors.white),
                label: Text('Route', style: TextStyle(
                  color: Colors.white)),
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.cyan)
                ),
              ),
              SizedBox(width: 35),
              ElevatedButton.icon(onPressed: () {},icon: Icon(Icons.share, color: Colors.white),
                label: Text('Share', style: TextStyle(
                  color: Colors.white)),
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.cyan)
                ),
              ),
            ],
          ),
        ],
       ),
    ); 
  }
}