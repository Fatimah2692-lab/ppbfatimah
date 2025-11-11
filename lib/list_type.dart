import 'package:flutter/material.dart';

class ListType extends StatelessWidget {
  const ListType({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.people),
            title: Text("judul"),
            subtitle: Text("Sub Judul"),
          );
        }
        ),
    );
  }
}