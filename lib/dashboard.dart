import 'package:flutter/material.dart';
import 'package:rsu_pindad/models/pasien.dart';

class Dashboard extends StatelessWidget {
  final Future<Pasien>? futurePasien;

  const Dashboard({Key? key, this.futurePasien}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Pasien>(
      future: futurePasien,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Hai, ' + snapshot.data!.name),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.info_outline_rounded)),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.settings))
                      ],
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 12,
                            color: Color.fromARGB(7, 0, 0, 0),
                            spreadRadius: 8)
                      ]),
                  child: Container(
                    padding: const EdgeInsets.all(18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Text('Jumlah registrasi hari ini'),
                            const Text(
                              '102',
                              style: TextStyle(
                                  fontSize: 56, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: const [
                                Text('Sisa antrean'),
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Text('68',
                                      style: TextStyle(
                                          fontSize: 28,
                                          fontWeight: FontWeight.bold)),
                                )
                              ],
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Image(
                                image: AssetImage('assets/images/logo.png')),
                            ElevatedButton(
                                onPressed: () {}, child: const Icon(Icons.add))
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }

        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
