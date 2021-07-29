import 'package:flutter/material.dart';
import 'local/notification.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Notification",
    home: new NotificationApp(),
  ));
}

class NotificationApp extends StatefulWidget {
  const NotificationApp({Key? key}) : super(key: key);

  @override
  _NotificationAppState createState() => _NotificationAppState();
}

class _NotificationAppState extends State<NotificationApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Click the button to receive the notification"),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: showNotification, child: Icon(Icons.notifications)),
    );
  }
}
