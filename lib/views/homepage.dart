import 'package:firebase_notification/api/firebase_api.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  FirebaseApi().initNotifications();
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 27, 27, 27)),
                    elevation: const MaterialStatePropertyAll(10)),
                child: const Text(
                  'Push Notification',
                  style: TextStyle(color: Colors.white),
                )),
          )
        ],
      ),
    );
  }
}
