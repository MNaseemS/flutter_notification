import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NotificationApp(),
    );
  }
}

class NotificationApp extends StatefulWidget {
  const NotificationApp({Key? key}) : super(key: key);

  @override
  _NotificationAppState createState() => _NotificationAppState();
}

class _NotificationAppState extends State<NotificationApp> {
  // 1 - We need to add a package to be able to use local notification
  // 2- Now we need to add some permission for android devices
  //Now let's create the notification system

  //Let's create a local notification object
  late FlutterLocalNotificationsPlugin localNotification;

  //Let's initialize this object
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var androidInitialize = new AndroidInitializationSettings("ic_launcher");
    //This function is to initialize android setting.
    //It takes the Icon name as a parameter.
    //Make sure that the Icon name exists in the drawable folder
    //or it will show an error
    //Now we need to restart our App to save the changes
    //let's initilize the setting for IOS platform
    var iOSInitilize = new IOSInitializationSettings();
    var initializationSetting = new InitializationSettings(
        android: androidInitialize, iOS: iOSInitilize);
    localNotification =
        new FlutterLocalNotificationsPlugin(); //we instanciate the local notification
    localNotification.initialize(initializationSetting);
  }

  //Now it's time for the show notification function
  //First, we need to change the type to Future

  Future _showNotification() async {
    var androidDetails = new AndroidNotificationDetails(
        "channelId",
        "Local Notification",
        "This is the description of the Notification, you can write anything",
        importance: Importance.high);
    var iOSDetails = new IOSNotificationDetails();
    var generalNotificationDetails =
        new NotificationDetails(android: androidDetails, iOS: iOSDetails);
    await localNotification.show(0, "Title Changed",
        "The Body of the Notification", generalNotificationDetails);
  }

  //Now, let's run the app
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Click the button to receive the notification"),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: _showNotification, child: Icon(Icons.notifications)),
    );
  }
}
