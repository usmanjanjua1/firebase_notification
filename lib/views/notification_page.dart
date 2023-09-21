import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final message = ModalRoute.of(context)!.settings.arguments as RemoteMessage;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
          backgroundColor: Colors.black,
          centerTitle: true,
          title: const Text(
            'Notifications',
            style: TextStyle(color: Colors.white),
          )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              message.notification!.title.toString(),
              style: const TextStyle(color: Colors.white),
            ),
            Text(
              message.notification!.body.toString(),
              style: const TextStyle(color: Colors.white),
            ),
            Text(
              message.data.toString(),
              style: const TextStyle(color: Colors.white),
            ),
            // Center(
            //   child: Text("Notifications"),
            // )
          ],
        ),
      ),
    );
  }
}
