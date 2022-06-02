import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:upi_dalam_data/screens/notification_detail.dart';
import 'package:upi_dalam_data/widgets/topbar.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key,}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) => readJson());
  }

  List _notifications = [];

  Future<void> readJson() async {
    final String response =
      await rootBundle.loadString('assets/notifications.json');
    final data = await json.decode(response);
    setState(() {
      _notifications = data["notifications"];
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
        title: const Text('Notification'),
        appBar: AppBar(),
        isLogo: false,
      ),
      body: Center(
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: _notifications.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: InkWell(
                splashColor: Colors.red.withAlpha(30),
                onTap:  () async => await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (
                      (context) => NotificationDetail(
                        notification: json.decode(_notifications[index]),
                      )
                    )
                  )
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 2,
                    horizontal: 4
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey,
                      width: 1
                    ),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                      Text(
                        DateTime.parse(_notifications[index].datetime).toString(),
                        textAlign: TextAlign.end,
                      ),
                      Text(
                        _notifications[index].title,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold
                        )
                      ),
                      Text(
                        _notifications[index].desc,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,
                      )
                    ],
                  ),
                ),
              ),
            );
          }
        ),
      ),
    );
  }
}
