import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:survei_feedback/pages/login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.teal,
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'aset_media/gambar/cover1.jpg'), // Path to your background image
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 60, // Adjust this value to move the profile section further up
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                          'aset_media/gambar/pp.jpg'), // Path to your profile image
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Nama Pengguna',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Email: user@example.com',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  Get.to(() => login_page());
                },
                child: Text("Log Out"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
