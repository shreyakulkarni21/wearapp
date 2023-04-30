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
        return macos;
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
    apiKey: 'AIzaSyCp5P9Jr9DbGL8fgoqTztO3O3k9ZbQW7OE',
    appId: '1:1080591013722:web:a7915df76d30a15b8a4563',
    messagingSenderId: '1080591013722',
    projectId: 'ihatefypp',
    authDomain: 'ihatefypp.firebaseapp.com',
    storageBucket: 'ihatefypp.appspot.com',
    measurementId: 'G-GW2C160NKY',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCiYHn1-G97mpICdNyjhtT69Lo72T39x-8',
    appId: '1:1080591013722:android:8b9957a2584a4d2b8a4563',
    messagingSenderId: '1080591013722',
    projectId: 'ihatefypp',
    storageBucket: 'ihatefypp.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA76iHmv9EKj9bJQESZCE_2rZCx-2S64xM',
    appId: '1:1080591013722:ios:07195c27ee49a49c8a4563',
    messagingSenderId: '1080591013722',
    projectId: 'ihatefypp',
    storageBucket: 'ihatefypp.appspot.com',
    iosClientId: '1080591013722-vikrt7ehvsjnq3u7dar48p16j38rs2g9.apps.googleusercontent.com',
    iosBundleId: 'dev.rexios.example',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA76iHmv9EKj9bJQESZCE_2rZCx-2S64xM',
    appId: '1:1080591013722:ios:07195c27ee49a49c8a4563',
    messagingSenderId: '1080591013722',
    projectId: 'ihatefypp',
    storageBucket: 'ihatefypp.appspot.com',
    iosClientId: '1080591013722-vikrt7ehvsjnq3u7dar48p16j38rs2g9.apps.googleusercontent.com',
    iosBundleId: 'dev.rexios.example',
  );
}
