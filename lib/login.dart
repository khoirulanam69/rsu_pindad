import 'package:flutter/material.dart';
import 'package:rsu_pindad/register.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController noRMController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
                  Container(
                    margin: const EdgeInsets.only(top: 20, bottom: 20),
                    child: TextField(
                      controller: noRMController,
                      keyboardType: TextInputType.number,
                      decoration:
                          const InputDecoration(hintText: 'Masukkan no RM'),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Login"),
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
                      onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Register()))
                      },
                      child: const Text("Daftar"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
