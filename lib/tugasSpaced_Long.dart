import 'package:flutter/material.dart';

class SpacedLongList extends StatelessWidget {
  const SpacedLongList({super.key});

  @override
  Widget build(BuildContext context) {
    const spacedColors = [
      Colors.red,
      Colors.blue,
      Colors.green,
      Colors.yellow,
    ];
    final longItems = List<String>.generate(100, (i) => 'Item ${i + 1}');

    return Scaffold(
      appBar: AppBar(title: const Text('Spaced & Long List'),),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          // =====================
          // 1. List dengan Spasi Merata
          // =====================
          const Text('1. List dengan Spasi Merata:', 
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 450,
            child: LayoutBuilder(
              builder: (context, constraints) {
                return SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: constraints.maxHeight,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: List.generate(4, (index){
                        return Card(
                          color: spacedColors[index],
                          child: SizedBox(
                            height: 100,
                            child: Center(
                              child: Text(
                                'Item ${index + 1}',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                   fontSize: 18),
                              ),
                            ),
                          ),
                        );
                      }
                      )
                    ),
                  )
                );
              },
            ),
          ),
          const SizedBox(height: 20),
          // =====================
          // 2. List Panjang dengan Scroll
          // =====================
          const Text(
            '2. List Panjang 100 Item',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: longItems.length,
            prototypeItem: const ListTile(title: Text('Item 1')),
            itemBuilder: (context, index) {
              Color textColor;
              if ((index ~/ 10) % 4 ==0){
                textColor = Colors.red;
              } else if ((index ~/ 10) % 4 == 1){
                textColor = Colors.blue;
              } else if ((index ~/ 10) % 4 == 2){
                textColor = Colors.green;
              } else {
                textColor = Colors.yellow;
              }
              return ListTile(
                leading: const Icon(Icons.star),
                title: Text(
                  longItems[index],
                  style: TextStyle(
                    color: textColor,
                  fontWeight: FontWeight.bold),),
              );
            },
          )
        ],
      ),
    );
  }
}