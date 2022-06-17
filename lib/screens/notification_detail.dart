import 'package:flutter/material.dart';
import 'package:upi_dalam_data/widgets/topbar.dart';
import 'package:url_launcher/url_launcher.dart';

class NotificationDetail extends StatefulWidget {
  final Map notification;

  const NotificationDetail({
    Key? key,
    required this.notification,
  }) : super(key: key);

  @override
  State<NotificationDetail> createState() => _NotificationDetailState();
}
class _NotificationDetailState extends State<NotificationDetail> {

  void _launchUrl() async {
    final Uri _url = Uri.parse(widget.notification["url"]);
    if (!await launchUrl(_url)) throw 'Could not launch $_url';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
        title: 'Notification',
        appBar: AppBar(),
        isLogo: false,
      ),
      body: SingleChildScrollView(child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 16
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 16
              ),
              child: Text(
                DateTime.parse(widget.notification["datetime"]).toString(),
                textAlign: TextAlign.end,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 8
              ),
              child: Text(
                widget.notification['title'],
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                )
              )
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                widget.notification['desc']                
              )
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 8
              ),
              child: InkWell(
                onTap: _launchUrl,
                child: Image.network(widget.notification["image"]),
              )
            ),
          ],
        ),)
      )
    );
  }
}

