import 'package:flutter/material.dart';
import 'package:upi_dalam_data/screens/infoFakultas.dart';
import 'dart:html';

class DetailBiodataFakultas extends StatefulWidget {
  const DetailBiodataFakultas({Key? key}) : super(key: key);

  @override
  State<DetailBiodataFakultas> createState() => _DetailBiodataFakultasState();
}

var majoring = [
  "1. Matematika",
  "2. Pendidikan Matematika",
  "3. Fisika",
  "4. Pendidikan Fisika",
  "5. Biologi",
  "6. Pendidikan Biologi",
  "7. Pendidikan Biologi (Kelas Internasional(?))",
  "8. Kimia",
  "9. Pendidikan Kimia",
  "10. Ilmu Komputer",
  "11. Pendidikan Ilmu Komputer"
];
String majoringList() {
  StringBuffer sb = StringBuffer();
  for (String line in majoring) {
    sb.write("$line\n");
  }
  return sb.toString();
}

class _DetailBiodataFakultasState extends State<DetailBiodataFakultas> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 30.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Fakultas Pendidikan Matematika dan Ilmu Pengetahuan Alam',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text('Alamat : jln. cibogo, no 20. Kota bandung'),
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Image.network(
                'https://storage.googleapis.com/cv-skn-bucket/pemvis/kelompok-1/banner_dosen.jpeg',
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ),
              const SizedBox(
                height: 30.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis tempus fringilla egestas. Morbi maximus nulla leo, in suscipit mauris vulputate vel. Etiam ut condimentum lorem. Nullam pharetra tristique feugiat. Maecenas lobortis sem vitae massa dictum ultrices. Nullam pulvinar urna interdum eros mollis, nec tincidunt ligula tincidunt.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      height: 1.5,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Jurusan :',
                    style: TextStyle(
                      height: 1.5,
                    ),
                  ),
                  Text(majoringList()),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2.5,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 8,
                        ),
                      ],
                    ),
                    child: Column(
                      children: const [
                        Text(
                          'Jumlah Mahasiswa',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          '2.051',
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2.5,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 8,
                        ),
                      ],
                    ),
                    child: Column(
                      children: const [
                        Text(
                          'Akreditasi',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          'A',
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }
}
