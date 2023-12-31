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
    apiKey: 'AIzaSyBzPR5ahBWM-H6d4-_kcmMNqEy-fVbUXPw',
    appId: '1:890701715669:web:ae499caf50271ea5496a5c',
    messagingSenderId: '890701715669',
    projectId: 'practice-of-firebase-bd6d7',
    authDomain: 'practice-of-firebase-bd6d7.firebaseapp.com',
    storageBucket: 'practice-of-firebase-bd6d7.appspot.com',
    measurementId: 'G-9ZMKMP5VB9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC1_wDGGWhMt8SUIjREgCnS_AGT3OWP0Ao',
    appId: '1:890701715669:android:34f59d7db2306f7c496a5c',
    messagingSenderId: '890701715669',
    projectId: 'practice-of-firebase-bd6d7',
    storageBucket: 'practice-of-firebase-bd6d7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAi1qsPzQCtEd9LGlobEMYgFVNcLu1q5QY',
    appId: '1:890701715669:ios:3fe078ccea2b506b496a5c',
    messagingSenderId: '890701715669',
    projectId: 'practice-of-firebase-bd6d7',
    storageBucket: 'practice-of-firebase-bd6d7.appspot.com',
    iosBundleId: 'com.example.firebasepractice',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAi1qsPzQCtEd9LGlobEMYgFVNcLu1q5QY',
    appId: '1:890701715669:ios:613afad7ccf57687496a5c',
    messagingSenderId: '890701715669',
    projectId: 'practice-of-firebase-bd6d7',
    storageBucket: 'practice-of-firebase-bd6d7.appspot.com',
    iosBundleId: 'com.example.firebasepractice.RunnerTests',
  );
}
