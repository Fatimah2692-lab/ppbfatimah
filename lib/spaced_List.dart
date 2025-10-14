import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SpacedList extends StatelessWidget {
  const SpacedList({super.key});

  @override
  Widget build(BuildContext context) {
    int itemCount = 4;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "List Panjang",
         style: TextStyle(color: Color.fromARGB(225, 225, 225, 225))
          ),
          backgroundColor: Colors.red,
          centerTitle: false,
        ),
        body: LayoutBuilder( //tinggi maksimum parent
          builder: (context,constraints){
            return SingleChildScrollView(
              child: ConstrainedBox(
                 //agar tingginya sesuai tinggi parent
                constraints:BoxConstraints(minHeight: constraints.maxHeight),
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: List.generate(
                    itemCount,(index) => Card(
                      color: Colors.cyanAccent,
                      margin: EdgeInsets.all(16),
                      child: SizedBox(
                        height: 100,
                        child: Center(
                          child: Text(
                          'Item $index',
                          style: TextStyle(color: Colors.blueAccent),
                        ),
                      ),
                    )
                  ),
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}