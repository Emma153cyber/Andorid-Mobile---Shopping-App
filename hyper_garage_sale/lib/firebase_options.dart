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
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBfdNZaHVkQpVDtGEvyXHxei5urNngcdOo',
    appId: '1:604040410806:web:c3e3d8c7d17cf189d0d817',
    messagingSenderId: '604040410806',
    projectId: 'neu-spring2022-1',
    authDomain: 'neu-spring2022-1.firebaseapp.com',
    databaseURL: 'https://neu-spring2022-1-default-rtdb.firebaseio.com',
    storageBucket: 'neu-spring2022-1.appspot.com',
    measurementId: 'G-42R4MJGQ87',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBDHDbzianFmq3pOZGjcUoEGH1nNh_rJ-o',
    appId: '1:604040410806:android:fbe37a339e0ab596d0d817',
    messagingSenderId: '604040410806',
    projectId: 'neu-spring2022-1',
    databaseURL: 'https://neu-spring2022-1-default-rtdb.firebaseio.com',
    storageBucket: 'neu-spring2022-1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC44Z9_14CC47bKpcv9Ac6q7NMopoz9_D8',
    appId: '1:604040410806:ios:81615c67f980ff5fd0d817',
    messagingSenderId: '604040410806',
    projectId: 'neu-spring2022-1',
    databaseURL: 'https://neu-spring2022-1-default-rtdb.firebaseio.com',
    storageBucket: 'neu-spring2022-1.appspot.com',
    androidClientId: '604040410806-320ukf9utgtuhtgdmqe7lpeqmv2dvs0u.apps.googleusercontent.com',
    iosClientId: '604040410806-aimf7p6vevq9nk8o4fmvjvgf3q5l0v0p.apps.googleusercontent.com',
    iosBundleId: 'com.example.hyperGarageSale',
  );
}
