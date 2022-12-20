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
    apiKey: 'AIzaSyALj7urlTufmbNXnWm5inKXacH-yibsqTc',
    appId: '1:205031869798:web:8ae9cd8becfb52f9884ca7',
    messagingSenderId: '205031869798',
    projectId: 'fir-chatapp-c6f6e',
    authDomain: 'fir-chatapp-c6f6e.firebaseapp.com',
    storageBucket: 'fir-chatapp-c6f6e.appspot.com',
    measurementId: 'G-QC2DRMNB1X',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCzPlNQ-zHB_KHBafcKqW6l8LVCCXrBAZQ',
    appId: '1:205031869798:android:ee52657a7d31f598884ca7',
    messagingSenderId: '205031869798',
    projectId: 'fir-chatapp-c6f6e',
    storageBucket: 'fir-chatapp-c6f6e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBWcyR0z5BKuf3krg3v4aYm4iQOFWW03wQ',
    appId: '1:205031869798:ios:0c3e8e511c2f859c884ca7',
    messagingSenderId: '205031869798',
    projectId: 'fir-chatapp-c6f6e',
    storageBucket: 'fir-chatapp-c6f6e.appspot.com',
    iosClientId: '205031869798-bq5s6t6tdi36c5pr56vc3o3egc6aqk3m.apps.googleusercontent.com',
    iosBundleId: 'com.example.cleanArchitecture',
  );
}
