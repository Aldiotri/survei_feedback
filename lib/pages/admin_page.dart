import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:survei_feedback/pages/tambah_survey_page.dart';
import 'package:survei_feedback/pages/edit_survey_page.dart';
import 'package:survei_feedback/pages/hasil_pagea.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({super.key});

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Page'),
        backgroundColor: Colors.blue,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('aset_media/gambar/cover2.jpg'), // Path to your background image
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.to(() => TambahSurveyPage());
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), // Warna latar belakang tombol
                  ),
                  child: Text("Tambah Survey"),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Get.to(() => EditSurveyPage());
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), // Warna latar belakang tombol
                  ),
                  child: Text("Edit Survey"),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Get.to(() => hasil_pagea());
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), // Warna latar belakang tombol
                  ),
                  child: Text("Hasil Survey"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
