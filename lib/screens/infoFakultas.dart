import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class infoFakultasPage extends StatefulWidget {
  const infoFakultasPage({Key? key}) : super(key: key);

  @override
  State<infoFakultasPage> createState() => _infoFakultasPageState();
}

class _infoFakultasPageState extends State<infoFakultasPage> {
  final listFakultas = [
    "FPMIPA",
    "FPIPS",
    "FPEB",
    "FPOK",
    "FPTK",
    "FPBS",
    "FPSD",
    "FIP",
    "UPI Cibiru",
    "UPI Sumedang",
    "UPI Serang",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        automaticallyImplyLeading: true,
        leading: const BackButton(),
        title: const Text(
          '[ Judul Screen ]',
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
      backgroundColor: Colors.white,
      body: ListView.separated(
        itemCount: listFakultas.length,
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(vertical: 29, horizontal: 30),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: const Color(0xFFFF0404),
              borderRadius: BorderRadius.circular(15),
            ),
            padding: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 13,
            ),
            child: Text(
              listFakultas[index],
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 19,
          );
        },
      ),
    );
  }
}
