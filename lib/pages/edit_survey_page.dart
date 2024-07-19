import 'package:flutter/material.dart';

class EditSurveyPage extends StatelessWidget {
  const EditSurveyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Survey'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Text('Form untuk mengedit survey yang ada'),
      ),
    );
  }
}
