import 'package:flutter/material.dart';
import 'package:flutter_1/detail_page.dart';

class FormValidtion extends StatefulWidget {
  const FormValidtion({super.key});

  @override
  State<FormValidtion> createState() => _FormValidtionState();
}

class _FormValidtionState extends State<FormValidtion> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
   final TextEditingController umurController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Validation'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0), 
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(label: Text('Nama'), hint: Text('Masukkan Nama')),
                validator: (value) { 
                  if (value == null || value.isEmpty) {
                    return 'This name Required';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: umurController,
                decoration: InputDecoration(label: Text('Umur'), hint: Text('Masukkan Umur')),
                validator: (value) { 
                  if (value == null || value.isEmpty) {
                    return 'This age Required';
                  }
                  return null;
                },
              ),
              SizedBox(height: 8,),
              ElevatedButton(
                onPressed: () {
                  if(_formkey.currentState!.validate()) {
                    String name = nameController.text;
                    String umur = umurController.text;

                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) =>
                      DetailPage(nama: name, umur: umur)),
                    );

                    // ScaffoldMessenger.of(
                    //   context
                    // ).showSnackBar(SnackBar(content: Text(name)));
                  }
                },
              child: Text('submit'))
            ],
          )
        ),
      )
    );
  }
}