// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDbe9dCkCJQEoTnjaNDL5CwyNRQahG7qBY',
    appId: '1:725891915239:web:b51a0c065ec446d676b142',
    messagingSenderId: '725891915239',
    projectId: 'push-notifications-ec2f9',
    authDomain: 'push-notifications-ec2f9.firebaseapp.com',
    storageBucket: 'push-notifications-ec2f9.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA8MwxwcEOqe4Uv-mQX0qWxGl9tS492xw8',
    appId: '1:725891915239:android:93b502dd0f5c602676b142',
    messagingSenderId: '725891915239',
    projectId: 'push-notifications-ec2f9',
    storageBucket: 'push-notifications-ec2f9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB8bEmtiQXcft4yZ9IpOP3vLFhsvfQpwd8',
    appId: '1:725891915239:ios:19fcbaf945611ff076b142',
    messagingSenderId: '725891915239',
    projectId: 'push-notifications-ec2f9',
    storageBucket: 'push-notifications-ec2f9.appspot.com',
    iosBundleId: 'com.example.firebaseNotification',
  );
}
