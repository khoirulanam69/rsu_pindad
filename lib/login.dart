import 'package:flutter/material.dart';
import 'package:rsu_pindad/dashboard.dart';
import 'package:rsu_pindad/models/pasien.dart';
// import 'package:rsu_pindad/register.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _key = GlobalKey<FormState>();

  TextEditingController noRMController = TextEditingController();

  Future<Pasien>? _futurePasien;

  Center loginPage() {
    return Center(
      child: SingleChildScrollView(
        child: Flexible(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Selamat Datang di RS Online",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const Image(
                  width: 200,
                  height: 200,
                  image: AssetImage('assets/images/logo.png'),
                ),
                const Text(
                  "RSU Pindad Turen",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: const Text(
                    "Aplikasi yang mempermudah anda dalam melakukan pendaftaran online dan melihat riwayat pemeriksaan Di RSU Pindad Turen",
                    textAlign: TextAlign.center,
                    style: TextStyle(height: 1.5),
                  ),
                ),
                Form(
                  key: _key,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 20, bottom: 20),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'No RM harus diisi';
                            }
                            return null;
                          },
                          controller: noRMController,
                          keyboardType: TextInputType.number,
                          decoration:
                              const InputDecoration(hintText: 'Masukkan no RM'),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            if (_key.currentState!.validate()) {
                              setState(() {
                                _futurePasien =
                                    Pasien.checkPasien(noRMController.text);
                              });
                            }
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(16),
                            child: Text("Login"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 10),
                  child: const Text(
                    "Belum punya akun?",
                    textAlign: TextAlign.start,
                    style: TextStyle(height: 1.5),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () => showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Fitur Belum Tersedia'),
                        content: const Text(
                            'Silahkan ke bagian administrasi RSU Pindad untuk melakukan pendaftaran'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'OK'),
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    ),

                    //  {
                    //   Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //           builder: (context) => const Register()))
                    // },
                    child: const Padding(
                      padding: EdgeInsets.all(16),
                      child: Text("Daftar"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (_futurePasien == null)
          ? loginPage()
          : Dashboard(futurePasien: _futurePasien),
    );
  }
}
