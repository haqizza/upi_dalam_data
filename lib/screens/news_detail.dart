import 'package:flutter/material.dart';
import 'package:upi_dalam_data/widgets/topbar.dart';

class NewsDetail extends StatelessWidget {
  final Map news;
  const NewsDetail({
    Key? key,
    required this.news
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: TopBar(
        title: 'News',
        appBar: AppBar(),
        isLogo: false,
      ),
      body: const Center(
        child: Center(
          child: Text('ara'),
          )
      ),
    );
  }
}