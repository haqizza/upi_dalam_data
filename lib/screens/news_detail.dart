import 'package:flutter/material.dart';
import 'package:upi_dalam_data/widgets/topbar.dart';
import 'package:flutter_html/flutter_html.dart';

class NewsDetail extends StatelessWidget {
  final Map news;
  // final String judul;
  // final String isi;

  const NewsDetail({
    Key? key,
    required this.news,
    // required this.judul,
    // required this.isi
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: TopBar(
        title: "",
        appBar: AppBar(
          title: Text("judul"
        ),
        ),
        isLogo: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Card(
            elevation: 3,
            child: ListTile(
              subtitle: Container(
                padding: EdgeInsets.all(4),
                child: Html(
                  data: """<div>
                      <h1>Demo Page</h1>
                      <p>This is a fantastic product that you should buy!</p>
                      <h3>Features</h3>
                      <ul>
                        <li>It actually works</li>
                        <li>It exists</li>
                        <li>It doesn't cost much!</li>
                      </ul>
                      <!--You can pretty much put any html in here!-->
                    </div>""",
                  //shrinkToFit: true,
                )
              )
            )
          ),
          ),
      ),
    );
  }
}