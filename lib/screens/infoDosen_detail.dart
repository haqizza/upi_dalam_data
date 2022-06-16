import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class infoDosenDetail extends StatefulWidget {
  final Map notification;

  const infoDosenDetail({
    Key? key,
    required this.notification,
  }) : super(key: key);

  @override
  State<infoDosenDetail> createState() => _infoDosenDetailState();
}

class _infoDosenDetailState extends State<infoDosenDetail> {
  String text = "Jeremia Manogi Mario";
  String tl = "Jakarta";
  String ttl = "21 Desember 2000";
  String gender = "Laki - laki";
  
  @override
  Widget build(BuildContext context) {
   return ListView(
     children: <Widget>[
   ]);
  }
    
}


