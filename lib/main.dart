import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rsu_pindad/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return const MaterialApp(
      home: Login(),
    );
  }
}
