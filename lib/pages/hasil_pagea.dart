import 'package:flutter/material.dart';
import 'package:survei_feedback/model.dart';

class hasil_pagea extends StatefulWidget {
  const hasil_pagea({super.key});

  @override
  State<hasil_pagea> createState() => _hasil_pageaState();
}

class _hasil_pageaState extends State<hasil_pagea> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hasil Survey'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: listhasil.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(listhasil[index].dosen),
        ),
      ),
    );
  }
}
