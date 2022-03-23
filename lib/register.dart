import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController nameController = TextEditingController();

  String genderValue = 'Pria';
  String blood = '-';
  String education = '-';
  static DateTime selectedDate = DateTime.now();
  String date = selectedDate.day.toString() +
      '-' +
      selectedDate.month.toString() +
      '-' +
      selectedDate.year.toString();

  _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate, // Refer step 1
      firstDate: DateTime(1000),
      lastDate: DateTime(3000),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        date = selectedDate.day.toString() +
            '-' +
            selectedDate.month.toString() +
            '-' +
            selectedDate.year.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pendaftaran Pasien Baru'),
      ),
      body: Center(
          child: Flexible(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "NAMA",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: nameController,
                      decoration: const InputDecoration(
                          hintText: 'John Doe', border: OutlineInputBorder()),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "NIK",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: nameController,
                      decoration: const InputDecoration(
                          hintText: '3507051234567890',
                          border: OutlineInputBorder()),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "NO TELP",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: nameController,
                      decoration: const InputDecoration(
                          hintText: '081234567890',
                          border: OutlineInputBorder()),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "ALAMAT",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: nameController,
                      decoration: const InputDecoration(
                          hintText:
                              'JL. Semeru No.1, Turen, Malang, Jawa Timur',
                          border: OutlineInputBorder()),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "AGAMA",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextField(
                              controller: nameController,
                              decoration: const InputDecoration(
                                  hintText: 'Islam',
                                  border: OutlineInputBorder()),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "JENIS KELAMIN",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            DropdownButtonFormField(
                                value: genderValue,
                                icon: const Icon(Icons.arrow_drop_down),
                                onChanged: (String? newValue) {},
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder()),
                                items: <String>[
                                  'Pria',
                                  'Wanita'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList()),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "TEMPAT LAHIR",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextField(
                              controller: nameController,
                              decoration: const InputDecoration(
                                  hintText: 'Islam',
                                  border: OutlineInputBorder()),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "TANGGAL LAHIR",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            OutlinedButton(
                                onPressed: () {
                                  _selectDate(context);
                                },
                                child: SizedBox(
                                  width: double.infinity,
                                  height: 60,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        date,
                                        style: const TextStyle(
                                            color: Colors.black54),
                                      ),
                                      const Icon(
                                        Icons.date_range,
                                        color: Colors.black54,
                                      )
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "NAMA IBU",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: nameController,
                      decoration: const InputDecoration(
                          hintText: 'Petrine Kumalasari',
                          border: OutlineInputBorder()),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "NAMA IBU",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: nameController,
                      decoration: const InputDecoration(
                          hintText: 'Petrine Kumalasari',
                          border: OutlineInputBorder()),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "PENDIDIKAN",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            DropdownButtonFormField(
                                value: education,
                                icon: const Icon(Icons.arrow_drop_down),
                                onChanged: (String? newValue) {},
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder()),
                                items: <String>[
                                  '-',
                                  'TK',
                                  'SD',
                                  'SMP',
                                  'SMA',
                                  'SLTA',
                                  'D1',
                                  'D2',
                                  'D3',
                                  'D4',
                                  'S1',
                                  'S2',
                                  'S3'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList()),
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "GOLONGAN DARAH",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            DropdownButtonFormField(
                                value: blood,
                                icon: const Icon(Icons.arrow_drop_down),
                                onChanged: (String? newValue) {},
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder()),
                                items: <String>[
                                  '-',
                                  'A',
                                  'B',
                                  'AB',
                                  'O'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList()),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "PEKERJAAN",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: nameController,
                      decoration: const InputDecoration(
                          hintText: 'Pegawai Negeri Sipil',
                          border: OutlineInputBorder()),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text('SUBMIT')))
              ],
            ),
          ),
        ),
      )),
    );
  }
}
