import 'dart:convert';

import 'package:http/http.dart' as http;

class Pasien {
  final int value;
  final String name;
  final String message;

  Pasien({required this.value, required this.name, required this.message});

  factory Pasien.fromJson(Map<String, dynamic> json) {
    return Pasien(
      name: json['name'],
      value: json['value'],
      message: json['message'],
    );
  }

  static Future<Pasien> checkPasien(String noRM) async {
    final response = await http.post(
      Uri.parse('https://myrsupindadturen.simkeskhanza.com/api/login.php'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{"noRM": noRM}),
    );
    return Pasien.fromJson(jsonDecode(response.body));
  }
}
