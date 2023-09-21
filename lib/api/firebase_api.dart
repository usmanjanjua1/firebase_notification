import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_notification/main.dart';
import 'package:flutter/material.dart';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class FirebaseApi {
  //create instance
  final firebaseMessaging = FirebaseMessaging.instance;

  //function to inititalise notification
  Future<void> initNotifications() async {
    //ask permission to send notification
    await firebaseMessaging.requestPermission();

    //fetch FCM token of the device
    final myFCMToken = await firebaseMessaging.getToken();
    initPushNotifications();
    print(myFCMToken);
  }

  //function to hanlde notifications
  void handleNotification(RemoteMessage? message) {
    if (message == null) return;

    LocalNotificationService.createAndDisplayNotification(message);
    // navigatorkey.currentState?.pushNamed(
    //   '/notificationsScreen',
    //   arguments: message,
    // );
  }

  //func to initialise background settings
  Future initPushNotifications() async {
    //handle notifications if the app was terminated and now opened
    FirebaseMessaging.instance.getInitialMessage().then(handleNotification);
    //attach event listener for when a notification opens the app
    FirebaseMessaging.onMessageOpenedApp.listen(handleNotification);

    //show inApp notificstions
    FirebaseMessaging.onMessage.listen(handleNotification);
  }
}

class LocalNotificationService {
  static final FlutterLocalNotificationsPlugin _notificationsPlugin =
      FlutterLocalNotificationsPlugin();
  static void initialize() {
    const InitializationSettings initializationSettings =
        InitializationSettings(
      android: AndroidInitializationSettings('@mipmap/ic_launcher'),
    );
    _notificationsPlugin.initialize(
      initializationSettings,
    );
  }

  static void createAndDisplayNotification(RemoteMessage message) async {
    try {
      final id = DateTime.now().millisecondsSinceEpoch ~/ 1000;
      NotificationDetails notificationDetails = NotificationDetails(
        android: AndroidNotificationDetails(
          colorized: true,
          chronometerCountDown: true,
          autoCancel: true,
          actions: [
            AndroidNotificationAction(id.toString(), 'Cancel'),
            AndroidNotificationAction(id.toString(), 'No Petting Today')
          ],
          color: Colors.red,
          enableVibration: true,
          enableLights: true,
          visibility: NotificationVisibility.public,
          'pushnotificationapp',
          'pushnotificationappchannel',
          importance: Importance.max,
          priority: Priority.high,
          fullScreenIntent: true, // Set this to true for pop-up notifications
        ),
      );
      await _notificationsPlugin.show(
        id,
        message.notification!.title,
        message.notification!.body,
        notificationDetails,
        payload: message.data['_id'],
      );
    } catch (e) {
      print(e);
    }
  }
}
