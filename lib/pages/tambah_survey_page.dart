import 'package:flutter/material.dart';

class TambahSurveyPage extends StatefulWidget {
  const TambahSurveyPage({super.key});

  @override
  _TambahSurveyPageState createState() => _TambahSurveyPageState();
}

class _TambahSurveyPageState extends State<TambahSurveyPage> {
  final _formKey = GlobalKey<FormState>();
  final List<TextEditingController> _questionControllers = [];
  String? _selectedDosen;

  void _addQuestion() {
    setState(() {
      _questionControllers.add(TextEditingController());
    });
  }

  @override
  void dispose() {
    for (var controller in _questionControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void _saveSurvey() {
    if (_formKey.currentState!.validate()) {
      // Proses penyimpanan data
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Survey berhasil ditambahkan')),
      );

      // Navigasi kembali setelah selesai
      Future.delayed(Duration(seconds: 2), () {
        Navigator.of(context).pop();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Survey'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(labelText: 'Pilih Dosen'),
                  value: _selectedDosen,
                  isExpanded: true, // Membuat dropdown button expanded
                  items: [
                    DropdownMenuItem(
                      value: 'Triyono,S.Kom - Pemrograman Mobile',
                      child: Text(
                        'Triyono,S.Kom - Pemrograman Mobile',
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DropdownMenuItem(
                      value:
                          'Joni Maulindar,S.Kom, M.Eng - Metodologi Penelitian',
                      child: Text(
                        'Joni Maulindar,S.Kom, M.Eng - Metodologi Penelitian',
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    DropdownMenuItem(
                      value: 'Triyana,M.Kom - Pemrograman Visual',
                      child: Text(
                        'Triyana,M.Kom - Pemrograman Visual',
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _selectedDosen = value;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Pilih dosen';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16),
                ..._questionControllers
                    .asMap()
                    .entries
                    .map(
                      (entry) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: TextFormField(
                          controller: entry.value,
                          decoration: InputDecoration(
                            labelText: 'Pertanyaan ${entry.key + 1}',
                            border: OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Masukkan pertanyaan';
                            }
                            return null;
                          },
                        ),
                      ),
                    )
                    .toList(),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: _addQuestion,
                  child: Text('Tambah Pertanyaan'),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: _saveSurvey,
                  child: Text('Simpan Survey'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // warna tombol biru
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
