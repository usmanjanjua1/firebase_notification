import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_notification/api/firebase_api.dart';
import 'package:firebase_notification/firebase_options.dart';
import 'package:firebase_notification/views/homepage.dart';
import 'package:firebase_notification/views/notification_page.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseApi().initNotifications();
  LocalNotificationService.initialize();
  runApp(const MyApp());
}

final navigatorkey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorkey,
      routes: {
        '/notificationsScreen': (context) => const NotificationsScreen(),
      },
      title: 'Firebase Notification',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
