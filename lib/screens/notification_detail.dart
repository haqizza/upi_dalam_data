import 'package:flutter/material.dart';
import 'package:upi_dalam_data/widgets/topbar.dart';

class NotificationDetail extends StatelessWidget {
  final Map notification;
  const NotificationDetail({
    Key? key,
    required this.notification
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
        title: const Text('Notification'),
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
