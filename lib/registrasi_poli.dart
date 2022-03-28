import 'package:flutter/material.dart';

class RegistrasiPoli extends StatefulWidget {
  const RegistrasiPoli({Key? key}) : super(key: key);

  @override
  State<RegistrasiPoli> createState() => _RegistrasiPoliState();
}

class _RegistrasiPoliState extends State<RegistrasiPoli> {
  TextEditingController pjController = TextEditingController();
  TextEditingController hubController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  String poliValue = 'Bedah';
  String dokterValue = 'dr. Hanafi';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Registrasi Poli')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Container(
              width: 200,
              margin: const EdgeInsets.only(bottom: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: const Text('Poli Tujuan',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                  ),
                  DropdownButtonFormField<String>(
                    value: poliValue,
                    isExpanded: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12))),
                    onChanged: (String? newValue) {
                      setState(() {
                        poliValue = newValue!;
                      });
                    },
                    items: <String>['Bedah', 'Penyakit Dalam']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            Container(
              width: 200,
              margin: const EdgeInsets.only(bottom: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: const Text('Dokter',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                  ),
                  DropdownButtonFormField<String>(
                    value: dokterValue,
                    isExpanded: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12))),
                    onChanged: (String? newValue) {
                      setState(() {
                        dokterValue = newValue!;
                      });
                    },
                    items: <String>['dr. Hanafi', 'dr. Vina']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 15),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: const Text('Penanggung Jawab',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600)),
                    ),
                    TextField(
                      controller: pjController,
                      decoration: InputDecoration(
                          hintText: 'John Doe',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12))),
                    )
                  ]),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 15),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: const Text('Hubungan',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600)),
                    ),
                    TextField(
                      controller: hubController,
                      decoration: InputDecoration(
                          hintText: 'Ayah',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12))),
                    )
                  ]),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 15),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      child: const Text('Alamat',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600)),
                    ),
                    TextField(
                      controller: addressController,
                      decoration: InputDecoration(
                          hintText: 'Jl. Semeru No.1 01/05, Turen, Malang',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12))),
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
