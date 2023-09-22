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
    apiKey: 'AIzaSyCdnF9GDNgixewWTci_YQGSGkFbW1iVmws',
    appId: '1:701079734029:web:c9dc36631d3b468616d244',
    messagingSenderId: '701079734029',
    projectId: 'fir-project-e89c8',
    authDomain: 'fir-project-e89c8.firebaseapp.com',
    storageBucket: 'fir-project-e89c8.appspot.com',
    measurementId: 'G-EK9NRC6SNT',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAXvCi9NGif931QCWkQbrtc5HDleAgcPc4',
    appId: '1:701079734029:android:eaa2f9caa72c7be916d244',
    messagingSenderId: '701079734029',
    projectId: 'fir-project-e89c8',
    storageBucket: 'fir-project-e89c8.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBdfcxgfevNLaEr89_Wzf4ol96n0WRjSVE',
    appId: '1:701079734029:ios:b3b0f9df398c670a16d244',
    messagingSenderId: '701079734029',
    projectId: 'fir-project-e89c8',
    storageBucket: 'fir-project-e89c8.appspot.com',
    iosBundleId: 'com.example.firebaseproject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBdfcxgfevNLaEr89_Wzf4ol96n0WRjSVE',
    appId: '1:701079734029:ios:a49c8c4a5fad87e016d244',
    messagingSenderId: '701079734029',
    projectId: 'fir-project-e89c8',
    storageBucket: 'fir-project-e89c8.appspot.com',
    iosBundleId: 'com.example.firebaseproject.RunnerTests',
  );
}