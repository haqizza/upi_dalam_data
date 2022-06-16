import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class infoDosenPage extends StatefulWidget {
  const infoDosenPage({Key? key}) : super(key: key);

  @override
  State<infoDosenPage> createState() => _infoDosenPageState();
}

class DosenItem {
  final String nama;
  final String tahunMengajar;
  final String jurusan;
  final String status;
  final String gambar;

  DosenItem(
      {this.nama = '',
      this.tahunMengajar = '',
      this.jurusan = '',
      this.status = '',
      this.gambar = ''});
}

class _infoDosenPageState extends State<infoDosenPage> {
  final listDataDosen = [
    DosenItem(
      nama: 'Keanu Reaver',
      tahunMengajar: '1998 - 2014',
      jurusan: 'Teknik Perfilman',
      status: 'Dosen',
      gambar: 'https://storage.googleapis.com/cv-skn-bucket/pemvis/kelompok-1/reanu_keeves.png',
    ),
    DosenItem(
      nama: 'Reanu Keeves',
      tahunMengajar: '1998 - 2014',
      jurusan: 'Teknik Perfilman',
      status: 'Dosen',
      gambar: 'https://storage.googleapis.com/cv-skn-bucket/pemvis/kelompok-1/reanu_keeves.png',
    ),
    DosenItem(
      nama: 'Ujang Keeves',
      tahunMengajar: '1998 - 2014',
      jurusan: 'Teknik Perfilman',
      status: 'Dosen',
      gambar: 'https://storage.googleapis.com/cv-skn-bucket/pemvis/kelompok-1/reanu_keeves.png',
    ),
    DosenItem(
      nama: 'Jajang Keeves',
      tahunMengajar: '1998 - 2014',
      jurusan: 'Teknik Perfilman',
      status: 'Dosen',
      gambar: 'https://storage.googleapis.com/cv-skn-bucket/pemvis/kelompok-1/reanu_keeves.png',
    ),
  ];

  List<DosenItem> dataSearch = [];
  String searchDosen = '';

  void searchNama(String val) {
    setState(() {
      searchDosen = val;
      dataSearch = listDataDosen.where((element) =>element.nama.toLowerCase().contains(val.toLowerCase())).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        automaticallyImplyLeading: true,
        leading: const BackButton(),
        title: const Text(
          'Info Dosen',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: false,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
            child: TextButton(
              onPressed: () {
                //Navigasi
              },
              style: TextButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                backgroundColor: const Color(0xFFFF0404),
                primary: Colors.white,
              ),
              child: const Text(
                'Login',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        children: [
          const SizedBox(
            height: 29,
          ),
          search(),
          const SizedBox(
            height: 35,
          ),
          listDosen(),
        ],
      ),
    );
  }

  Widget search() {
    return TextFormField(
      onChanged: (val) {
        searchNama(val);
      },
      cursorColor: const Color(0xFFFF0404),
      decoration: InputDecoration(
        hintText: 'Cari ...',
        suffixIcon: const Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            width: 1,
          ),
        ),
        focusColor: const Color(0xFFFF0404),
        contentPadding: const EdgeInsets.all(12),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            width: 1,
            color: Color(0xFFFF0404),
          ),
        ),
      ),
    );
  }

  Widget listDosen() {
    return searchDosen.isNotEmpty && dataSearch.isEmpty? 
    Column(
      children: [
        const SizedBox(height: 20),
        Center(child: Text('Dosen "$searchDosen" tidak ditemukan')),
      ],
    ): 
    ListView.separated(
      shrinkWrap: true,
      itemCount: dataSearch.isEmpty && searchDosen.isEmpty? listDataDosen.length: dataSearch.length,
      itemBuilder: (context, index) {
        return itemDosen(dataSearch.isEmpty && searchDosen.isEmpty? listDataDosen[index]: dataSearch[index]);
      },
      separatorBuilder: (context, index) {
      return const SizedBox(
        height: 30,
      );
      },
    );
  }

  Widget itemDosen(DosenItem item) {
    return SizedBox(
      width: double.infinity,
      height: 100,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.black.withOpacity(0.1),
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.08),
                  blurRadius: 8,
                  offset: const Offset(0, 0),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.horizontal(
                          left: Radius.circular(20)),
                      border: Border.all(
                        color: Colors.black.withOpacity(0.1),
                        width: 1,
                      ),
                    ),
                    child: Image.asset(item.gambar)),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: double.infinity,
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        item.nama,
                        style: const TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        item.tahunMengajar,
                        style: const TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                        ),
                      ),
                      Text(
                        item.jurusan,
                        style: const TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                        ),
                      ),
                      Text(
                        item.status,
                        style: const TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}



