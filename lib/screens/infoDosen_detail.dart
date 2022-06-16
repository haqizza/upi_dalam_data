import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class infoDosenDetail extends StatelessWidget {
  const infoDosenDetail({
    Key? key,
  }) : super(key: key);

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
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: Row(
                  children: [
                    Image.network('https://storage.googleapis.com/cv-skn-bucket/pemvis/kelompok-1/reanu_keeves.png'),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Keanu Reeves',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              height: 2.0,
                            ),
                          ),
                          Text(
                            '4762504413',
                            style: TextStyle(
                              height: 2.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Departemen / Program Studi :',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                    ),
                  ),
                  Text(
                    'xxxxx',
                    style: TextStyle(
                      height: 1.5,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Status Ketenagakerjaan :',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                    ),
                  ),
                  Text(
                    'Dosen / Tendik',
                    style: TextStyle(
                      height: 1.5,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Email :',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                    ),
                  ),
                  Text(
                    'xxxxx@upi.edu',
                    style: TextStyle(
                      height: 1.5,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Mata Kuliah yang Diampu :',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                    ),
                  ),
                  Text(
                    '1. ___________________',
                    style: TextStyle(
                      height: 1.5,
                    ),
                  ),
                  Text(
                    '2. ___________________',
                    style: TextStyle(
                      height: 1.5,
                    ),
                  ),
                  Text(
                    '3. ___________________',
                    style: TextStyle(
                      height: 1.5,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Riwayat Pendidikan :',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                    ),
                  ),
                  Text(
                    '1. ___________________',
                    style: TextStyle(
                      height: 1.5,
                    ),
                  ),
                  Text(
                    '2. ___________________',
                    style: TextStyle(
                      height: 1.5,
                    ),
                  ),
                  Text(
                    '3. ___________________',
                    style: TextStyle(
                      height: 1.5,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Penelitian / Jurnal :',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                    ),
                  ),
                  Text(
                    '1. ___________________',
                    style: TextStyle(
                      height: 1.5,
                    ),
                  ),
                  Text(
                    '2. ___________________',
                    style: TextStyle(
                      height: 1.5,
                    ),
                  ),
                  Text(
                    '3. ___________________',
                    style: TextStyle(
                      height: 1.5,
                    ),
                  ),
                  Text(
                    '4. Selengkapnya...',
                    style: TextStyle(
                      height: 1.5,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Pengalaman Pengabdian Kepada Masyarakat :',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                    ),
                  ),
                  Text(
                    '1. ___________________',
                    style: TextStyle(
                      height: 1.5,
                    ),
                  ),
                  Text(
                    '2. ___________________',
                    style: TextStyle(
                      height: 1.5,
                    ),
                  ),
                  Text(
                    '3. ___________________',
                    style: TextStyle(
                      height: 1.5,
                    ),
                  ),
                  Text(
                    '4. Selengkapnya...',
                    style: TextStyle(
                      height: 1.5,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Penghargaan Yang Pernah Diraih :',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      height: 1.5,
                    ),
                  ),
                  Text(
                    '1. ___________________',
                    style: TextStyle(
                      height: 1.5,
                    ),
                  ),
                  Text(
                    '2. ___________________',
                    style: TextStyle(
                      height: 1.5,
                    ),
                  ),
                  Text(
                    '3. ___________________',
                    style: TextStyle(
                      height: 1.5,
                    ),
                  ),
                  Text(
                    '4. Selengkapnya...',
                    style: TextStyle(
                      height: 1.5,
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


