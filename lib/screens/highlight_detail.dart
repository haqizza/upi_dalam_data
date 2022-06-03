import 'package:flutter/material.dart';
import 'package:upi_dalam_data/widgets/topbar.dart';

class HighlightDetail extends StatefulWidget {
  final Map highlight;

  const HighlightDetail({
    Key? key,
    required this.highlight,
  }) : super(key: key);

  @override
  State<HighlightDetail> createState() => _HighlightDetailState();
}

class _HighlightDetailState extends State<HighlightDetail> {
  // @override
  // void initState() {
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TopBar(
          title: 'Highlight',
          appBar: AppBar(),
          isLogo: false,
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                  child: Text(widget.highlight['title'],
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontWeight: FontWeight.bold))),
              Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    widget.highlight['desc'],
                    overflow: TextOverflow.ellipsis,
                    maxLines: 4,
                  )),
            ],
          ),
        ));
  }
}
