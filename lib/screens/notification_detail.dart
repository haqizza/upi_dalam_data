import 'package:flutter/material.dart';
import 'package:upi_dalam_data/widgets/topbar.dart';

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
  // @override
  // void initState() {
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
        title: 'Notification',
        appBar: AppBar(),
        isLogo: false,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 16
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                DateTime.parse(widget.notification["datetime"]).toString(),
                textAlign: TextAlign.end,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 8
              ),
              child: Text(
                widget.notification['title'],
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.bold
                )
              )
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                widget.notification['desc'],
                overflow: TextOverflow.ellipsis,
                maxLines: 4,
              )
            ),
          ],
        ),
      )
    );
  }
}
