import 'package:flutter/material.dart';

class LthnListGrid extends StatelessWidget {
  const LthnListGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List & Grid')
      ),
      body: SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Menu Aplikasi'),
          ListTile(leading: Icon(Icons.phone), title: Text('Phone'),),
          ListTile(leading: Icon(Icons.chat), title: Text('Message')),
          ListTile(leading: Icon(Icons.star), title: Text('Bintang')),

          Text('Warna Horizontal'),
          SizedBox(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(width: 150, color:Colors.amber),
                Container(width: 150, color:Colors.green),
                Container(width: 150, color:Colors.blue),
                Container(width: 150, color:Colors.red),
              ],
            ),
          ),
          const Text('Grid Item'),
          GridView.count(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            children: List.generate(6, (index){
              return Center(
                child: Text('Item $index', style: const TextStyle(fontSize: 20)),
                );
            }),
            )
        ],
      ),
      )
    );
  }
}