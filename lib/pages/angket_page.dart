import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:survei_feedback/pages/hasil_page.dart';
import 'package:survei_feedback/model.dart';

class AngketPage extends StatefulWidget {
  const AngketPage({super.key});

  @override
  State<AngketPage> createState() => _AngketPageState();
}

class _AngketPageState extends State<AngketPage> {
  List<String> namadosen = [
    "Triyono,S.Kom - Pemrograman Mobile",
    "Triyana,M.Kom - Pemrograman Visual",
    "Joni Maulindar,S.Kom, M.Eng - Metodologi Penelitian",
    "Putri Intan Prastiwi,S.E, M.Ak - Manajemen",
    "Vihi Atina,M.Kom - Kecerdasan Buatan dan Mesin",
    "Bondan Wahyu Pamekas,M.Kom - Keamanan Informasi",
    "Nugroho Arif Sudibyo,S.Si, M.Pd - Metode Numerik",
    "Marta Ardiyanto,M.Kom - Sistem Terdistribusi",
  ];

  String? dosen;
  String? nilai1;
  String? nilai2;
  String? nilai3;
  String? nilai4;
  String? nilai5;

  @override
  Widget build(BuildContext context) {
    TextEditingController saranController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("Angket"),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
        children: [
          Text('Pilih Dosen', style: TextStyle(fontSize: 16)),
          DropdownButton(
            value: dosen,
            items: namadosen
                .map((e) => DropdownMenuItem(
                      child: Text(e, style: TextStyle(fontSize: 13.0)),
                      value: e,
                    ))
                .toList(),
            onChanged: (value) {
              setState(() {
                dosen = value;
              });
            },
          ),
          Text('1. Dosen hadir sesuai jadwal.', style: TextStyle(fontSize: 16)),
          RadioListTile(
              dense: true,
              value: "Sangat Setuju",
              title: Text('Sangat Setuju '),
              groupValue: nilai1,
              onChanged: (value) {
                setState(() {
                  nilai1 = value;
                });
              }),
          RadioListTile(
              dense: true,
              value: "Setuju",
              title: Text('Setuju'),
              groupValue: nilai1,
              onChanged: (value) {
                setState(() {
                  nilai1 = value;
                });
              }),
          RadioListTile(
              dense: true,
              value: "Agak Setuju",
              title: Text('Agak Setuju'),
              groupValue: nilai1,
              onChanged: (value) {
                setState(() {
                  nilai1 = value;
                });
              }),
          RadioListTile(
              dense: true,
              value: "Tidak Setuju",
              title: Text('Tidak Setuju'),
              groupValue: nilai1,
              onChanged: (value) {
                setState(() {
                  nilai1 = value;
                });
              }),
          RadioListTile(
              dense: true,
              value: "Sangat Tidak Setuju",
              title: Text('Sangat Tidak Setuju'),
              groupValue: nilai1,
              onChanged: (value) {
                setState(() {
                  nilai1 = value;
                });
              }),
          Text(
              '2. Dosen menjelaskan materi kuliah secara sistematis sehingga mudah diikuti dan dipahami.',
              style: TextStyle(fontSize: 16)),
          RadioListTile(
              dense: true,
              value: "Sangat Setuju",
              title: Text('Sangat Setuju '),
              groupValue: nilai2,
              onChanged: (value) {
                setState(() {
                  nilai2 = value;
                });
              }),
          RadioListTile(
              dense: true,
              value: "Setuju",
              title: Text('Setuju'),
              groupValue: nilai2,
              onChanged: (value) {
                setState(() {
                  nilai2 = value;
                });
              }),
          RadioListTile(
              dense: true,
              value: "Agak Setuju",
              title: Text('Agak Setuju'),
              groupValue: nilai2,
              onChanged: (value) {
                setState(() {
                  nilai2 = value;
                });
              }),
          RadioListTile(
              dense: true,
              value: "Tidak Setuju",
              title: Text('Tidak Setuju'),
              groupValue: nilai2,
              onChanged: (value) {
                setState(() {
                  nilai2 = value;
                });
              }),
          RadioListTile(
              dense: true,
              value: "Sangat Tidak Setuju",
              title: Text('Sangat Tidak Setuju'),
              groupValue: nilai2,
              onChanged: (value) {
                setState(() {
                  nilai2 = value;
                });
              }),
          Text(
              '3. Konsep-konsep penting dijelaskan secara khusus dengan memberikan contoh sehingga membantu pemahaman dan ingatan.',
              style: TextStyle(fontSize: 16)),
          RadioListTile(
              dense: true,
              value: "Sangat Setuju",
              title: Text('Sangat Setuju '),
              groupValue: nilai3,
              onChanged: (value) {
                setState(() {
                  nilai3 = value;
                });
              }),
          RadioListTile(
              dense: true,
              value: "Setuju",
              title: Text('Setuju'),
              groupValue: nilai3,
              onChanged: (value) {
                setState(() {
                  nilai3 = value;
                });
              }),
          RadioListTile(
              dense: true,
              value: "Agak Setuju",
              title: Text('Agak Setuju'),
              groupValue: nilai3,
              onChanged: (value) {
                setState(() {
                  nilai3 = value;
                });
              }),
          RadioListTile(
              dense: true,
              value: "Tidak Setuju",
              title: Text('Tidak Setuju'),
              groupValue: nilai3,
              onChanged: (value) {
                setState(() {
                  nilai3 = value;
                });
              }),
          RadioListTile(
              dense: true,
              value: "Sangat Tidak Setuju",
              title: Text('Sangat Tidak Setuju'),
              groupValue: nilai3,
              onChanged: (value) {
                setState(() {
                  nilai3 = value;
                });
              }),
          Text(
              '4. Dosen menggunakan LCD dan file powerpoint dalam menyampaikan materi sehingga pokok-pokok isi materi kuliah menjadi jelas.',
              style: TextStyle(fontSize: 16)),
          RadioListTile(
              dense: true,
              value: "Sangat Setuju",
              title: Text('Sangat Setuju '),
              groupValue: nilai4,
              onChanged: (value) {
                setState(() {
                  nilai4 = value;
                });
              }),
          RadioListTile(
              dense: true,
              value: "Setuju",
              title: Text('Setuju'),
              groupValue: nilai4,
              onChanged: (value) {
                setState(() {
                  nilai4 = value;
                });
              }),
          RadioListTile(
              dense: true,
              value: "Agak Setuju",
              title: Text('Agak Setuju'),
              groupValue: nilai4,
              onChanged: (value) {
                setState(() {
                  nilai4 = value;
                });
              }),
          RadioListTile(
              dense: true,
              value: "Tidak Setuju",
              title: Text('Tidak Setuju'),
              groupValue: nilai4,
              onChanged: (value) {
                setState(() {
                  nilai4 = value;
                });
              }),
          RadioListTile(
              dense: true,
              value: "Sangat Tidak Setuju",
              title: Text('Sangat Tidak Setuju'),
              groupValue: nilai4,
              onChanged: (value) {
                setState(() {
                  nilai4 = value;
                });
              }),
          Text(
              '5. Dosen memberikan kesempatan bertanya kepada mahasiswa dan juga memberikan tanggapan.',
              style: TextStyle(fontSize: 16)),
          RadioListTile(
              dense: true,
              value: "Sangat Setuju",
              title: Text('Sangat Setuju '),
              groupValue: nilai5,
              onChanged: (value) {
                setState(() {
                  nilai5 = value;
                });
              }),
          RadioListTile(
              dense: true,
              value: "Setuju",
              title: Text('Setuju'),
              groupValue: nilai5,
              onChanged: (value) {
                setState(() {
                  nilai5 = value;
                });
              }),
          RadioListTile(
              dense: true,
              value: "Agak Setuju",
              title: Text('Agak Setuju'),
              groupValue: nilai5,
              onChanged: (value) {
                setState(() {
                  nilai5 = value;
                });
              }),
          RadioListTile(
              dense: true,
              value: "Tidak Setuju",
              title: Text('Tidak Setuju'),
              groupValue: nilai5,
              onChanged: (value) {
                setState(() {
                  nilai5 = value;
                });
              }),
          RadioListTile(
              dense: true,
              value: "Sangat Tidak Setuju",
              title: Text('Sangat Tidak Setuju'),
              groupValue: nilai5,
              onChanged: (value) {
                setState(() {
                  nilai5 = value;
                });
              }),
          Expanded(
            child: TextFormField(
              controller: saranController,
              maxLines: 2,
              decoration: InputDecoration(
                labelText: "SARAN UNTUK DOSEN",
                hintText:
                    "Gunakan bahasa yang sopan dan kritik yang bersifat membangun.",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                left: 50.0, right: 50.0, top: 20.0, bottom: 20.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text('Oke'))
                                  ],
                                  title: const Text('Angket Tersimpan'),
                                  contentPadding: const EdgeInsets.all(20),
                                  content: const Text(
                                      'Terimakasih sudah mengisi angket'),
                                ));
                        setState(() {
                          hasil Hasil = hasil(
                            dosen!,
                            nilai1!,
                            nilai2!,
                            nilai3!,
                            nilai4!,
                            nilai5!,
                            saranController.text,
                          );
                          listhasil.add(Hasil);
                        });
                      },
                      child: Text('SIMPAN')),
                ]),
          ),
        ],
      ),
    );
  }
}
