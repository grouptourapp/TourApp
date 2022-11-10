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
    apiKey: 'AIzaSyC6a_EdGrRTYZgU_CVn591xHRJcM2SdIGo',
    appId: '1:430906815007:web:1fa01422d167ad9dc2db2a',
    messagingSenderId: '430906815007',
    projectId: 'tourapp-46586',
    authDomain: 'tourapp-46586.firebaseapp.com',
    storageBucket: 'tourapp-46586.appspot.com',
    measurementId: 'G-3KHVL9FJQF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDtwjSLNcQvCGdLnUFwTPNmaKFIeuNfQA0',
    appId: '1:430906815007:android:57109e5920b18a54c2db2a',
    messagingSenderId: '430906815007',
    projectId: 'tourapp-46586',
    storageBucket: 'tourapp-46586.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD41pdVJ0r0NuvhGls_x9d7cmEieev5hmk',
    appId: '1:430906815007:ios:b0eb1c240be3fab3c2db2a',
    messagingSenderId: '430906815007',
    projectId: 'tourapp-46586',
    storageBucket: 'tourapp-46586.appspot.com',
    iosClientId: '430906815007-mitjgst7ocso1d7mr4qcr0g01j9knt62.apps.googleusercontent.com',
    iosBundleId: 'com.tourapp.tourapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD41pdVJ0r0NuvhGls_x9d7cmEieev5hmk',
    appId: '1:430906815007:ios:b0eb1c240be3fab3c2db2a',
    messagingSenderId: '430906815007',
    projectId: 'tourapp-46586',
    storageBucket: 'tourapp-46586.appspot.com',
    iosClientId: '430906815007-mitjgst7ocso1d7mr4qcr0g01j9knt62.apps.googleusercontent.com',
    iosBundleId: 'com.tourapp.tourapp',
  );
}