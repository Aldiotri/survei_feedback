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
          backgroundColor: Colors.blue,
        ),
        body: Center(
            child: Container(
          child: ElevatedButton(
            onPressed: () {
              Get.to(() => login_page());
            },
            child: Text("Log Out"),
          ),
        )));
  }
}
