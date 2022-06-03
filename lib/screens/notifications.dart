import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:upi_dalam_data/screens/notification_detail.dart';

class Notifications extends StatefulWidget {
  final Function(String) setTitle;
  
  const Notifications({
    Key? key,
    required this.setTitle,
  }) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) => readJson());
    WidgetsBinding.instance?.addPostFrameCallback((_) => widget.setTitle('Notifications'));
  }

  void addPostFrameCallback(FrameCallback callback) {
    widget.setTitle('Notifications').add(callback);
  }

  List _notifications = [];

  Future<void> readJson() async {
    final String response =
      await rootBundle.loadString('notifications.json');
    final data = await json.decode(response);
    setState(() {
      _notifications = data["notifications"];
    });
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: _notifications.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.white,
            shadowColor: Colors.black,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16))
            ),
            borderOnForeground: true,
            margin: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 8
            ),
            child: InkWell(
              splashColor: Colors.red.withAlpha(30),
              onTap:  () async => await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (
                    (context) => NotificationDetail(
                      notification: _notifications[index]
                    )
                  )
                )
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 2,
                  horizontal: 4
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        DateTime.parse(_notifications[index]["datetime"]).toString(),
                        textAlign: TextAlign.end,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 0,
                        horizontal: 8
                      ),
                      child: Text(
                        _notifications[index]['title'],
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold
                        )
                      )
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        _notifications[index]['desc'],
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,
                      )
                    ),
                  ],
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}
